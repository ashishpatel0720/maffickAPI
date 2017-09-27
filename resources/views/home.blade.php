<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width">
    <title>Technosearch API</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.4.4/css/bulma.min.css">
    <style>

        h2{
            font-size:2em;
            margin-top:1em;

        }
        h4{
            font-size:1.8em;
        }
        li{
            margin:0.5em;
            list-style-type: disc;

        }
    </style>
</head>
<body>
<div class="section">
    <div class="container">
        <h2 id="built-with" style="margin-bottom: 10px;">Built With</h2>
        <p><a href='//lumen.laravel.com' style="margin-top: 5px;"><img width='300px'
                                                                       src="https://camo.githubusercontent.com/875d6587e1585507b593e850f305d1339c84c81c/687474703a2f2f73616d6d796b2e73332e616d617a6f6e6177732e636f6d2f6f70656e2d736f757263652f6c61726176656c2d66616365626f6f6b2d73646b2f6c756d656e2d352e706e67"></a>
        </p>
        <h2 id="install-and-run">Install and Run</h2>
        <p>This API provides functionality for Technosearch 2k17, MANIT.</p>

        <ul>
            <li>clone project</li>
            <li>install composer dependencies using <code>composer install</code> (of course you need, php and composer)
            </li>
            <li>create <code>.env</code> file by copying from <code>.env.example</code></li>
            <li>create database and fill database name and password in `.env’ file</li>
            <li>Now run <code>php -S localhost:8080 -t public </code>, which will run your app on <code>localhost:8080</code>.</li>
            <li>That’s It, You can modify and create a pull request, Thanks.</li>
        </ul>
        <h2 id="api-documentation">API Documentation</h2>
        <h4 id="welcome-page">Home Page</h4>
        <blockquote>
            <p><code>GET /</code> will take you to the Home Page. where you will get same documentation.</p>
        </blockquote>

        <h4 id="user">Events</h4>
        <blockquote>
            <p>Every thing about Events, following are parameters for events </p>
        </blockquote>
        <table class="table">
            <thead>
            <tr class="header">
                <th>key</th>
                <th align="center">value type</th>
            </tr>
            </thead>
            <tbody>
            <tr class="odd">
                <td>name</td>
                <td align="center">event's name(required)</td>
            </tr>
            <tr class="even">
                <td>category</td>
                <td align="center">category of event</td>
            </tr>
            <tr class="odd">
                <td>problem_statement</td>
                <td align="center">problem statement relaed to event</td>
            </tr>
             <tr class="even">
                 <td>description</td>
                <td align="center">description of event</td>
            </tr>
            <tr class="odd">
                <td>name1</td>
                <td align="center">cordinator1 for event</td>
            </tr>
             <tr class="even">
                 <td>email1</td>
                <td align="center">coardinator1's email</td>
            </tr>
            <tr class="odd">
                <td>contact1</td>
                <td align="center">cordinator1's contact number</td>
            </tr>
            <tr class="even">
                <td>name2</td>
                <td align="center">cordinator2 for event</td>
            </tr>
             <tr class="odd">
                 <td>email2</td>
                <td align="center">coardinator2's email</td>
            </tr>
            <tr class="even">
                <td>contact2</td>
                <td align="center">cordinator2's contact number</td>
            </tr>
            </tbody>
        </table>
        <table class="table">
            <thead>
            <tr class="header">
                <th>API Route</th>
                <th align="center">Functionality</th>
            </tr>
            </thead>
            <tbody>
            <tr class="odd">
                <td>GET /events</td>
                <td align="center">All events Users</td>
            </tr>
            <tr class="even">
                <td>GET /events/{event_slug}</td>
                <td align="center">Event Detail</td>
            </tr>
            <tr class="odd">
                <td>POST /events</td>
                <td align="center">Add new Event</td>
            </tr>
            </tbody>
        </table>



        <h4 id="order">Order</h4>
        <blockquote>
            <p>Every thing about Simple Orders (not return orders)<br/>
                as we are assuming some orders has been placed and delivered)</p>
        </blockquote>
        <table class='table'>
            <thead>
            <tr class="header">
                <th>API Route</th>
                <th align="center">Functionality</th>
            </tr>
            </thead>
            <tbody>
            <tr class="odd">
                <td>GET /orders</td>
                <td align="center">All Delivered Orders</td>
            </tr>
            <tr class="even">
                <td>GET /order/{orderId}</td>
                <td align="center">Order Details</td>
            </tr>
            <tr class="odd">
                <td>GET /order/{orderId}/agent</td>
                <td align="center">Agent who has Delivered Order</td>
            </tr>
            </tbody>
        </table>
        <blockquote>
            <p>Here agent is person who has delivered order ( not the one who will be picking it for return)</p>
        </blockquote>
        <h4 id="return-orders">Return Orders</h4>
        <blockquote>
            <p>Every thing about Return Orders ( which will be assigned to free or nearest Agent)</p>
        </blockquote>
        <table class='table'>
            <thead>
            <tr class="header">
                <th>API Route</th>
                <th align="center">Functionality</th>
            </tr>
            </thead>
            <tbody>
            <tr class="odd">
                <td>GET /returns</td>
                <td align="center">All Return Placed Orders</td>
            </tr>
            <tr class="even">
                <td>GET /return/{returnId}</td>
                <td align="center">Return Order Details</td>
            </tr>
            <tr class="odd">
                <td>GET /return/place/{orderId}</td>
                <td align="center">Place Order with
                    <orderId> for return
                </td>
            </tr>
            <tr class="even">
                <td>GET /return/complete/{orderId}</td>
                <td align="center">Return has been SuccessFull</td>
            </tr>
            </tbody>
        </table>
        <blockquote>
            <p>Here agent is person who has delivered order ( not the one who will be picking it for return)
            </p>
        </blockquote>
        <h4 id="agent">Agent</h4>
        <blockquote>
            <p>Every thing about Delivery Agent</p>
        </blockquote>
        <table class='table'>
            <thead>
            <tr class="header">
                <th>API Route</th>
                <th align="center">Functionality</th>
            </tr>
            </thead>
            <tbody>
            <tr class="odd">
                <td>GET /agents</td>
                <td align="center">All Registered Agents</td>
            </tr>
            <tr class="even">
                <td>GET /agent/{agentId}</td>
                <td align="center">Agent Detail</td>
            </tr>
            <tr class="odd">
                <td>GET /agent/{agentId}/orders</td>
                <td align="center">All Orders Delivered By Agent</td>
            </tr>
            <tr class="even">
                <td>GET /agents/free</td>
                <td align="center">All Free Agents (with no assigned order)</td>
            </tr>
            <tr class="odd">
                <td>GET /agents/busy</td>
                <td align="center">All Busy Agents (with assigned order/orders)</td>
            </tr>
            </tbody>
        </table>
        <h2 id="bugs-and-fixes">Bugs and Fixes</h2>
        <p>Every thing anyone create has bugs and some of them can be fixed, If you find one,<br />
            please mail me at <a href="mailto:ashishpatel@gmail.com">ashishpatel0720@gmail.com</a></p>
        <h2 id="license">License</h2>
        <p>This API is open-sourced software licensed under the <a href="http://opensource.org/licenses/MIT">MIT license</a>.</p>
    </div>
</div>
</body>
</html>