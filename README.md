# Dart Future Exception Handling Bug

This repository demonstrates a common error in Dart asynchronous programming: insufficient exception handling within a `Future` function. The `bug.dart` file contains code that fetches data from an API and lacks robust error handling.  The `bugSolution.dart` file provides a corrected version with improved error handling.

## Problem

The original code only prints a generic error message if the API request fails or if the response is missing expected data. This makes debugging difficult.

## Solution

The solution includes more specific error handling and logging to pinpoint the source of issues.  It also uses more descriptive error messages to improve the user experience.
