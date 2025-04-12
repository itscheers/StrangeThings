<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Text Quest - Game</title>
</head>
<body>
<h1>Hello, <c:out value="${playerName}"/>!</h1>
<p><strong><c:out value="${question}"/></strong></p>

<form action="${pageContext.request.contextPath}/game" method="post">
    <c:choose>

        <c:when test="${question eq 'You received a mysterious message. Read it?'}">
            <button type="submit" name="choice" value="Read">Read</button>
            <button type="submit" name="choice" value="Ignore">Ignore</button>
        </c:when>

        <c:when test="${question eq 'The message contains coordinates. Go there?'}">
            <button type="submit" name="choice" value="Go">Go</button>
            <button type="submit" name="choice" value="Stay">Stay</button>
        </c:when>

        <c:when test="${question eq 'You arrive at an old house. Enter?'}">
            <button type="submit" name="choice" value="Enter">Enter</button>
            <button type="submit" name="choice" value="Skip">Skip</button>
        </c:when>

        <c:when test="${question eq 'Inside, you find an ancient map. Examine it?'}">
            <button type="submit" name="choice" value="Examine">Examine</button>
            <button type="submit" name="choice" value="Ignore">Ignore</button>
        </c:when>

        <c:when test="${question eq 'The map shows a hidden stash. Look for a key?'}">
            <button type="submit" name="choice" value="Search">Search</button>
            <button type="submit" name="choice" value="Leave">Leave</button>
        </c:when>

        <c:when test="${question eq 'You find a locked door. Open it?'}">
            <button type="submit" name="choice" value="Open">Open</button>
            <button type="submit" name="choice" value="Do not open">Do not open</button>
        </c:when>

        <c:when test="${question eq 'Beyond the door, you find a hidden chamber. Explore further?'}">
            <button type="submit" name="choice" value="Explore">Explore</button>
            <button type="submit" name="choice" value="Retreat">Retreat</button>
        </c:when>

        <c:when test="${question eq 'Inside the chamber, you discover a cryptic inscription. Decipher it?'}">
            <button type="submit" name="choice" value="Decipher">Decipher</button>
            <button type="submit" name="choice" value="Ignore">Ignore</button>
        </c:when>

        <c:when test="${question eq 'Having deciphered the inscription, you learn the secret location of the treasure. Go to the location?'}">
            <button type="submit" name="choice" value="Go">Go</button>
            <button type="submit" name="choice" value="Doubt">Doubt</button>
        </c:when>

        <c:otherwise>
            <button type="submit" name="choice" value="Unknown">Unknown</button>
        </c:otherwise>

    </c:choose>
</form>
</body>
</html>
<%-- 1--%>

