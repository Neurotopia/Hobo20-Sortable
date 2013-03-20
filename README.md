Hi,

I am not able to get <sortable-collection > with acts_as_list to work with controllers that are in the admin subsite. 
It works great in the primary (non-subsite) controllers.

In this sample Hobo 2.0 app, posted at https://github.com/PHanson-Neurotopia/Hobo20-Sortable.git, 
I get the following error on the admin/other_contacts page: 
undefined method `admin_reorder_other_contacts_url' for #<#<Class:0x007f813b243ad8>:0x007f813b3ef698>

OtherContact is the model that exhibits the problem. 
Notice that the Contact model is also using acts_as_list and sortable-collection and works just fine at /contacts index page.

Thank you very much for your help,
 Paul

Bryan Larsen posted:
That's not being tested in our integration tests, so it's not 
surprising that it's broken.   Please open an issue on github. 
Although probably not necessary since it should be fairly easy to do 
myself, it would also be helpful to send me a sample app that exhibits 
the problem. 

Bryan