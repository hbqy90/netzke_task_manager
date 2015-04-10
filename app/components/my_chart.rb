  class MyChart < Netzke::Base
    js_configure do |c|
        #c.extend = "Ext.chart.Chart"#"Ext.chart.Chart"
        c.extend = 'Ext.Panel'
        c.mixin #:my_chart
        c.title = 'Simple Chart'
        c.xtype = "basic-pie"
    end 


    # def configure(c)
    #     c.animate = true
    #     c.model = "Task"
    #     #c.pri = data_class.primary_key
    #     c.item = {
    #          [{
    #                 :type => 'Numeric',
    #                 :position => 'left',
    #                 :fields => ['comission'],
    #                 :title => 'Sample Values',
    #                 :grid => true,
    #                 :minimum => 0
    #             }, {
    #                 :type => 'Category',
    #                 :position => 'bottom',
    #                 :fields => ['month'],
    #                 :title => 'Sample Metrics'
    #             }],
    #          [{
    #                  :type => 'column',
    #                  :axis => 'left',
    #                  :gutter => 80,
    #                  :stacked => true,
    #                 :xField => 'month',
    #                 :yField => 'comission'
    #              }]
    #     }
        

    # end


  # endpoint :get_data do |params|
  #   sales = data_class.all()
  #   sales.map do |s|
  #     {:month => s.month, :comission => s.comission}
  #   end
  # end
end
