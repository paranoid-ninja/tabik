Выберите район города *#{@city.russian}*.
****
buts ||= []
buts = keyboard(@districts, 3) do |rec|
  button("#{rec[:russian]}", rec[:id])
end
if @districts.current_page == 1
  buts <<
      [
          button("#{icon('arrow_forward')} Вперед", 'next_districts')
      ]
elsif @districts.page_count == @districts.current_page
  buts <<
      [
          button("#{icon('arrow_left')} Назад", 'prev_districts'),
      ]
else
  buts <<
      [
          button("#{icon('arrow_left')} Назад", 'prev_districts'),
          button("#{icon('arrow_forward')} Вперед", 'next_districts')
      ]
end

