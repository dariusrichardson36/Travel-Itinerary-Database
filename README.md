# 🧳 Travel Itinerary Management Database
A relational travel itinerary management system built using MySQL Workbench. The database models travelers, trips, destinations, attractions, and reviews using a fully normalized schema with ER diagrams, relational design, and advanced SQL queries.

This project simulates the backend database of a travel-planning platform where users can create trips, schedule visits to attractions, and leave reviews based on their travel experience.

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

- **Database**: MySQL Workbench
- **Language**: SQL
- **Tools**: ER Modeling, Relational Design, Views, Joins, Aggregation

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

## 🔍 Sample Queries Include

- Nested subqueries
- INNER/LEFT JOINs across 3+ tables
- Grouping with HAVING conditions
- Views for filtered destination data

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

## 📫 Contact

**Darius Richardson**  
🔗 [LinkedIn](https://www.linkedin.com/in/darius-richardson-ga-tech)   
📧 [Email Me](mailto:darius.richardson36@yahoo.com)
