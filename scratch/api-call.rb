<div>
  <table>
    <thead>
      <tr>
        <th>Category</th>
        <th>Donation Count</th>
        <th>Donation Amount</th>
      </tr>
    </thead>
      <tbody>
          <% industries = retrieve_top_industries(@politician.firstname, @politician.last_name) %>
          <% industries.each do |industry| %>
          <tr>
            <td><%= industry.name %></td>
            <td><%= industry.count %></td>
            <td><%= industry.amount %></td>
          </tr>
        <% end %>
      </tbody>

  </table>
</div>
