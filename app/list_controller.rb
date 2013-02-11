class ListController < UITableViewController
  def viewDidLoad
    navigationItem.title = 'test'
    @items = ['foo', 'bar', 'baz']
  end

  def tableView(table, numberOfRowsInSection:section)
    @items.size
  end

  def tableView(table, cellForRowAtIndexPath:indexPath)    
    cell = table.dequeueReusableCellWithIdentifier('cell') ||
      UITableViewCell.alloc.initWithStyle(UITableViewCellStyleSubtitle, reuseIdentifier: 'cell')
    cell.textLabel.text = @items[indexPath.row]
    cell
  end
end
