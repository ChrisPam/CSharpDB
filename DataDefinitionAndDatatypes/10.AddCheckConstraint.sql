ALTER TABLE Users
ADD CONSTRAINT CHK_Password CHECK(Password > 5)