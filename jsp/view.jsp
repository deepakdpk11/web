<!DOCTYPE HTML>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!--<link rel="stylesheet" href="/assets/css/custom.css">-->
    <title>Smaerportal</title>
</head>
<style>
    .table-wrapper {
        margin-top: 50px;
    }

    .player-img {
        width: 40px;
        height: 40px;
    }

    .add-player-form {
        margin-top: 50px;
    }
</style>
<body>
<div class="page-wrapper">
     <nav class="navbar navbar-light bg-light">
        <span class="navbar-brand mb-0 h1" ><a href="/">Socka Players</a></span>
        <a class="float-right" href="/add" title="Add a New Player">Add a Player</a>
    </nav> 
</div>

<div class="table-wrapper">
        <% if (players.length > 0) {%>
            <table class="table table-hovered">
                <thead class="thead-dark">
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Image</th>
                        <th scope="col">First Name</th>
                        <th scope="col">Last Name</th>
                        <th scope="col">Position</th>
                        <th scope="col">Number</th>
                        <th scope="col">Username</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <% players.forEach((player, index) => { %>
                        <tr>
                            <th scope="row"><%= player.id %></th>
                            <td><img src="/assets/img/<%= player.image %>" class="rounded-circle player-img" alt=""></td>
                            <td><%= player.first_name %></td>
                            <td><%= player.last_name %></td>
                            <td><%= player.position %></td>
                            <td><%= player.number %></td>
                            <td>@<%= player.user_name %></td>
                            <td>
                                <a href="/edit/<%= player.id %>" target="_blank" rel="noopener" class="btn btn-sm btn-success">Edit</a>
                                <a href="/delete/<%= player.id %>" class="btn btn-sm btn-danger">Delete</a>
                            </td>
                        </tr>
                    <% }) %>
                </tbody>
            </table>
        <% } else { %>
            <p class="text-center">No players found. Go <a href="/add" >here</a> to add players.</p>
        <% } %>
    </div>
</div>
</body>
</html>

