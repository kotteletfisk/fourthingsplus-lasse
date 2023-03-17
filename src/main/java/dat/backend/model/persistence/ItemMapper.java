package dat.backend.model.persistence;

import dat.backend.model.entities.Item;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

class ItemMapper
{
    static List<Item> getItems(ConnectionPool connectionPool)
    {
        List<Item> items = new ArrayList<>();

        String sql = "SELECT * FROM item;";

        try (Connection connection = connectionPool.getConnection())
        {
            try(PreparedStatement ps = connection.prepareStatement(sql))
            {
               ResultSet result = ps.executeQuery();

               while (result.next())
               {
                   int id = result.getInt("item_id");
                   String name = result.getString("name");
                   boolean done = result.getBoolean("done");
                   Timestamp created = result.getTimestamp("created");
                   String username = result.getString("username");

                   items.add(new Item(id, name, done, created, username));
               }
            }

            catch (SQLException e)
            {
                e.printStackTrace();
            }
        }

        catch (SQLException e)
        {
            e.printStackTrace();
        }

        return items;
    }
}
