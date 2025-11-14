library(data.table)
# Importing CSv Files
sakila_data <- fread("C:/Users/ibrahim laptops/Documents/sakila-csv/film.csv")
customer_data <- fread("C:/Users/ibrahim laptops/Documents/sakila-csv/customer.csv")
store_data <- fread("C:/Users/ibrahim laptops/Documents/sakila-csv/store.csv")
payment_data <- fread("C:/Users/ibrahim laptops/Documents/sakila-csv/payment.csv")
rental_data <- fread("C:/Users/ibrahim laptops/Documents/sakila-csv/rental.csv")
# Print CSV 
head(rental_data)
head(payment_data)
head(store_data)
head(customer_data)
head(sakila_data)

# 1. Filter PG-rated films with rental duration > 5 days
result1 <- sakila_data[rating == "PG" & rental_duration > 5]

# Print the result
print(result1)

# 2. Calculate the average rental rate grouped by film rating
result2 <- sakila_data[, .(avg_rental_rate = mean(rental_rate)), by = rating]

# Print the result
print(result2)

# # 3. Count the number of films in each language_id
# result3 <- sakila_data[, .(film_count = .N), by = language_id]

# # Print the result
# print(result3)
# head(sakila_data)

# # 4. Join customer data with store data by store_id
# customer_store_data <- merge(customer_data, store_data, by = "store_id")

# # Combine first_name and last_name to create customer_name
# customer_store_data[, customer_name := paste(first_name, last_name)]

# # Select customer names and store IDs
# result4 <- customer_store_data[, .(customer_name, store_id)]

# # Print the result
# print(result4)


# # 5.Select payment amount, date, and staff who processed the payment
# result5 <- payment_data[, .(amount, payment_date, staff_id)]

# # Print the result
# print(result5)

 
# # 6. Merge the film data with rental data by film_id
# films_rented <- merge(sakila_data, rental_data, by.x = "film_id", by.y = "inventory_id", all.x = TRUE)

# # Filter films that have no rental date (not rented)
# result6 <- films_rented[is.na(rental_date), .(film_id, title)]

# # Print the result
# print(result6)

# library(ggplot2)

# # 7. Plot the distribution of rental rates
# ggplot(sakila_data, aes(x = rental_rate)) +
#   geom_histogram(binwidth = 0.5, fill = "blue", color = "black", alpha = 0.7) +
#   labs(title = "Distribution of Rental Rates", x = "Rental Rate", y = "Frequency") +
#   theme_minimal()


