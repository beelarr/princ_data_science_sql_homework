SELECT COUNT(DISTINCT C.COURSE_ID) COURSE_COUNT
FROM ENROLLMENT E
JOIN STUDENT S
    ON E.S_ID = S.S_ID
JOIN COURSE_SECTION CS
    ON E.C_SEC_ID = CS.C_SEC_ID
JOIN COURSE C
    ON CS.COURSE_ID = C.COURSE_ID
WHERE S_FIRST = 'LISA'
AND S_LAST = 'JOHNSON'
AND (GRADE IS NOT NULL);