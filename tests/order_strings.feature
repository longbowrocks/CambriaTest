Feature: Order Strings
  Read input.csv, alphabetically sort the values found on the first line, and write those values to output.csv.

  Scenario: Input file does not exist
    Given an input filename that does not reflect the name of any file in the working directory
    When opening the file
    Then print an error and do not write ouput file
  Scenario: Input file is empty
    Given an empty input file
    When reading the file
    Then print an error and do not write output file
  Scenario: Input file contains non-ascii characters
    Given an input file that contains non-ascii unicode characters, like smileys or asterisms
    When sorting the strings
    Then non ascii characters compare their unicode value against other characters, meaning that any strings starting with a non-ascii character will appear after all strings that start with ascii characters
  Scenario: Input file is not utf-8 encoded, but encoding is specified
    Given an input file that is not utf-8 encoded, but has encoding at start of file
    When opening the file
    Then read the file as the specified encoding
  Scenario: Input file is not utf-8 encoded, and encoding is not specified
    Given an input file that is not utf-8 encoded
    When opening the file
    Then interpret the file as utf-8. If invalid codes are encountered, print an error and do not write output file
