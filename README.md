# Karate API Tests - Swagger Petstore

This project contains **API automation tests** for the [Swagger Petstore API](https://petstore.swagger.io/) built with Karate
The tests validate **CRUD operations** on the Petstore `/pet` endpoint with both positive and negative scenarios.

---

## 🧪 Test Scenarios

### ✅ Positive Scenarios
1. **Create Pet** → Add a new pet with valid data.  
2. **Read Pet** → Retrieve an existing pet by ID.  
3. **Update Pet** → Update an existing pet’s status.  
4. **Delete Pet** → Remove an existing pet and verify it is deleted.  

### ❌ Negative Scenarios
1. Create a pet with missing fields.  
2. Read a non-existent pet.  
3. Update a non-existent pet.  
4. Delete a non-existent pet.  
5. Use an invalid data type (e.g., string as ID).  

## 🚀 How to Run Tests

### Prerequisites
- Java 11+
- Maven
- IntelliJ IDEA
### Run All Tests
```bash
 mvn test
