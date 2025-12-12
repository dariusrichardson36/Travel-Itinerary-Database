# 🧳 Travel Itinerary Management Database
A relational travel itinerary management system built using MySQL Workbench. The database models travelers, trips, destinations, attractions, and reviews using a fully normalized schema with ER diagrams, relational design, and advanced SQL queries.

This project simulates the backend database of a travel-planning platform where users can create trips, schedule visits to attractions, and leave reviews based on their travel experience. This project demonstrates my ability to design normalized relational databases, create ER diagrams, and implement complex SQL queries.

---

## 📐 ER Design & Structure
- Designed an Enhanced ER (EER) diagram to capture relationships between travelers, trips, destinations, attractions, and reviews.
- Converted the conceptual model into a normalized relational schema (3NF) using primary keys, foreign keys, associative tables, and integrity constraints.
- Ensures consistent, scalable, and query-efficient storage for itinerary management.

---

## 🧩 Schema at a Glance
| Table               | Description                                            |
| ------------------- | ------------------------------------------------------ |
| **User**            | Stores traveler information (name, email, preferences) |
| **Trip**            | Contains destination, travel dates, and trip metadata  |
| **Attraction**      | Points of interest at each destination                 |
| **Destination**     | Cities/countries linked to attractions and trips       |
| **Trip_Attraction** | Associative table linking planned attractions to trips |
| **Review**          | User ratings and comments for visited attractions      |

---

## 🛠️ Technologies Used
- **Database:** MySQL Workbench
- **Language:** SQL
- **Tools & Concepts:**
  - EER Modeling
  - Relational Schema Design
  - Foreign Keys & Constraints
  - JOINs, Subqueries, Aggregation
  - Views for simplified data access

---

## 📁 Project Files

| File | Purpose |
|------|---------|
| `Table Creation.sql` | Defines all relational tables |
| `Adding Foreign Keys.sql` | Adds constraints to enforce data integrity |
| `Inserting Data.sql` | Populates tables with sample data |
| `Queries.sql` | Includes JOINs, filters, grouping, subqueries, etc. |
| `View Creation.sql` | Demonstrates SQL views for simplified access |

---

## 🔍 Example Query

Here is one of the advanced multi-table queries from the project:
```bash
⭐ Example: Top-rated attractions in a user’s upcoming trips
SELECT a.name AS attraction_name,
       d.city,
       d.country,
       AVG(r.rating) AS avg_rating
FROM Trip t
JOIN Trip_Attraction ta ON t.trip_id = ta.trip_id
JOIN Attraction a       ON ta.attraction_id = a.attraction_id
JOIN Destination d      ON a.destination_id = d.destination_id
JOIN Review r           ON r.attraction_id = a.attraction_id
WHERE t.user_id = 101
  AND t.start_date > CURDATE()
GROUP BY a.name, d.city, d.country
HAVING AVG(r.rating) >= 4.5
ORDER BY avg_rating DESC;
```

This query demonstrates:
- Multi-table JOINs
- Filtering on future trips
- Aggregation with HAVING
- User-personalized recommendations

---

## 🧪 Sample Query Types Included
- Nested and correlated subqueries
- Multi-level JOIN operations
- Aggregations with GROUP BY + HAVING
- Views for reusable data summaries
- Complex filtering across multiple dimensions

---

## 📸 Visual Aids

### 🧩 EER Diagram
![EER Diagram](./assets/Screenshots/EER_Diagram.png)

### 📊 Relational Schema
![Relational Schema](./assets/Screenshots/Relational_Model.png)

### 🧪 View 1 Example
![Query Example](./assets/Screenshots/View1.png)

### 🧪 View 2 Example
![Query Example](./assets/Screenshots/View2.png)

### 🧪 View 3 Example
![Query Example](./assets/Screenshots/View3.png)

### 🧪 View 4 Example
![Query Example](./assets/Screenshots/View4.png)

---

## 📝 License
This project is licensed under the **MIT License**.  
See the `LICENSE` file for details.
