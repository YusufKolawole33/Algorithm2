Problem 1: Sum of Distinct Elements from Two Sets (using Arrays)
Description: Given two sets of elements (represented as arrays), find the sum of all elements that are present in only one of the given sets.

Algorithm: SumOfUniquelyPresentElements

Input:

Set1: An array of numbers (e.g., [3, 1, 7, 9])
Set2: An array of numbers (e.g., [2, 4, 1, 9, 3])
Output:

total_sum_distinct: An integer representing the sum of elements found uniquely in either Set1 or Set2.
Steps:

Initialize total_sum_distinct = 0.

Iterate through Set1 to find elements unique to Set1:

FOR EACH element_s1 IN Set1 DO
is_present_in_set2 = FALSE
FOR EACH element_s2 IN Set2 DO (Nested loop for comparison)
IF element_s1 IS EQUAL TO element_s2 THEN
SET is_present_in_set2 = TRUE
BREAK (Exit this inner loop as a match is found)
END IF
END FOR
IF is_present_in_set2 IS FALSE THEN
ADD element_s1 TO total_sum_distinct
END IF
END FOR
Iterate through Set2 to find elements unique to Set2:

FOR EACH element_s2 IN Set2 DO
is_present_in_set1 = FALSE
FOR EACH element_s1 IN Set1 DO (Nested loop for comparison)
IF element_s2 IS EQUAL TO element_s1 THEN
SET is_present_in_set1 = TRUE
BREAK (Exit this inner loop as a match is found)
END IF
END FOR
IF is_present_in_set1 IS FALSE THEN
ADD element_s2 TO total_sum_distinct
END IF
END FOR
Display total_sum_distinct.

Problem 2: Dot Product and Orthogonality of Vectors
Part A: Dot Product Procedure
Procedure: dot_product(IN v1: ARRAY of REAL, IN v2: ARRAY of REAL, OUT ps: REAL)

Description: Calculates the dot (scalar) product of two vectors, v1 and v2, and stores the result in the ps variable.

Input Parameters:

v1: An array representing the first vector (passed by value).
v2: An array representing the second vector (passed by value).
ps: A real variable (passed by reference, meaning changes inside the procedure affect the original variable outside) where the result will be stored.
Precondition: v1 and v2 must have the same number of elements (same dimension).

Steps:

Initialize current_dot_sum = 0.
Get dimension = LENGTH(v1). (Assuming v1 and v2 have equal length)
FOR i FROM 0 TO dimension - 1 DO
ADD (v1[i] * v2[i]) TO current_dot_sum
END FOR
Assign current_dot_sum to ps.
Part B: Algorithm to Determine Orthogonality (using dot_product Procedure)
Algorithm: CheckOrthogonalityWithProcedure

Input:

n: An integer, the number of vector pairs to analyze.
Output:

For each pair, a statement indicating whether the vectors are orthogonal.
Steps:

FOR k FROM 1 TO n DO (Outer loop for n pairs of vectors)
DISPLAY "Enter elements for Vector A (separated by spaces, e.g., 1 2 3):"

READ VectorA AS ARRAY of REAL

DISPLAY "Enter elements for Vector B (separated by spaces, e.g., 4 5 6):"

READ VectorB AS ARRAY of REAL

IF LENGTH(VectorA) IS NOT EQUAL TO LENGTH(VectorB) THEN

DISPLAY "Error: Vectors must have the same dimension. Skipping this pair."
CONTINUE (Move to the next iteration of the outer loop)
END IF

Declare scalar_product_result as a REAL variable.

Call the procedure: CALL dot_product(VectorA, VectorB, scalar_product_result)

(Here, VectorA and VectorB are passed by value, and scalar_product_result is passed by reference to receive the computed dot product.)
IF scalar_product_result IS EQUAL TO 0 THEN

DISPLAY "Vectors A and B are orthogonal."
ELSE

DISPLAY "Vectors A and B are NOT orthogonal. Dot product: " + scalar_product_result
END IF

END FOR
Part C: Algorithm to Determine Orthogonality (using dot_product Function)
Function: calculate_dot_product(IN v1: ARRAY of REAL, IN v2: ARRAY of REAL) RETURNS REAL

Description: Calculates the dot (scalar) product of two vectors, v1 and v2, and returns the result.

Input Parameters:

v1: An array representing the first vector (passed by value).
v2: An array representing the second vector (passed by value).
Precondition: v1 and v2 must have the same number of elements (same dimension).

Steps:

Initialize current_dot_sum = 0.
Get dimension = LENGTH(v1).
FOR i FROM 0 TO dimension - 1 DO
ADD (v1[i] * v2[i]) TO current_dot_sum
END FOR
RETURN current_dot_sum.
Algorithm: CheckOrthogonalityWithFunction
Input:

n: An integer, the number of vector pairs to analyze.
Output:

For each pair, a statement indicating whether the vectors are orthogonal.
Steps:

FOR k FROM 1 TO n DO (Outer loop for n pairs of vectors)
DISPLAY "Enter elements for Vector A (separated by spaces, e.g., 1 2 3):"

READ VectorA AS ARRAY of REAL

DISPLAY "Enter elements for Vector B (separated by spaces, e.g., 4 5 6):"

READ VectorB AS ARRAY of REAL

IF LENGTH(VectorA) IS NOT EQUAL TO LENGTH(VectorB) THEN

DISPLAY "Error: Vectors must have the same dimension. Skipping this pair."
CONTINUE (Move to the next iteration of the outer loop)
END IF

Call the function: SET scalar_product_result = calculate_dot_product(VectorA, VectorB)

(Here, VectorA and VectorB are passed by value, and the function directly returns the computed dot product, which is then assigned to scalar_product_result.)
IF scalar_product_result IS EQUAL TO 0 THEN

DISPLAY "Vectors A and B are orthogonal."
ELSE

DISPLAY "Vectors A and B are NOT orthogonal. Dot product: " + scalar_product_result
END IF

END FOR