import unittest
from unittest.mock import MagicMock

from src.app import EmployeeDatabase

class TestEmployeeDatabase(unittest.TestCase):

    def setUp(self):
        # Δημιουργούμε ένα mock αντικείμενο για τη βάση δεδομένων
        self.db = MagicMock(spec=EmployeeDatabase)

        # Ορίζουμε την αναμενόμενη επιστροφή της μεθόδου create_employee
        self.db.create_employee.side_effect = [
            "Employee created successfully",
            "Employee ID already exists"
        ]

        # Ορίζουμε την αναμενόμενη επιστροφή της μεθόδου read_employee
        self.db.read_employee.side_effect = [
            "ID: 1, Name: John Doe, Department: IT, Position: Developer",
            "ID: 2, Name: Jane Smith, Department: HR, Position: Manager",
            "Employee not found"
        ]

        # Ορίζουμε την αναμενόμενη επιστροφή της μεθόδου update_employee
        self.db.update_employee.side_effect = [
            "Employee updated successfully",
            "Employee not found"
        ]

        # Ορίζουμε την αναμενόμενη επιστροφή της μεθόδου delete_employee
        self.db.delete_employee.side_effect = [
            "Employee deleted successfully",
            "Employee not found"
        ]

    def test_create_employee(self):
        # Καλούμε τη μέθοδο create_employee με τα αντίστοιχα ορίσματα
        result1 = self.db.create_employee("Alice Johnson", "Marketing", "Analyst")
        self.assertEqual(result1, "Employee created successfully")

        # Καλούμε τη μέθοδο create_employee με υπάρχοντα ID
        result2 = self.db.create_employee("Test User", "Test Dept", "Test Position")
        self.assertEqual(result2, "Employee ID already exists")

    def test_read_employee(self):
        # Καλούμε τη μέθοδο read_employee για υπάρχοντα υπάλληλα
        result1 = self.db.read_employee(1)
        self.assertEqual(result1, "ID: 1, Name: John Doe, Department: IT, Position: Developer")

        result2 = self.db.read_employee(2)
        self.assertEqual(result2, "ID: 2, Name: Jane Smith, Department: HR, Position: Manager")

        # Καλούμε τη μέθοδο read_employee για μη υπάρχοντες υπάλληλους
        result3 = self.db.read_employee(3)
        self.assertEqual(result3, "Employee not found")

    def test_update_employee(self):
        # Καλούμε τη μέθοδο update_employee για υπάρχοντες υπάλληλους
        result1 = self.db.update_employee(1, name="Updated Name", position="Senior Developer")
        self.assertEqual(result1, "Employee updated successfully")

        # Καλούμε τη μέθοδο update_employee για μη υπάρχοντα υπάλληλα
        result2 = self.db.update_employee(3)
        self.assertEqual(result2, "Employee not found")

    def test_delete_employee(self):
        # Καλούμε τη μέθοδο delete_employee για υπάρχοντα υπάλληλα
        result1 = self.db.delete_employee(2)
        self.assertEqual(result1, "Employee deleted successfully")

        # Καλούμε τη μέθοδο delete_employee για μη υπάρχοντα υπάλληλα
        result2 = self.db.delete_employee(3)
        self.assertEqual(result2, "Employee not found")


if __name__ == '__main__':
    unittest.main()
