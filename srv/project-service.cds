using com.acc.customtype as demo from '../db/schema';

service ProjectService @(path: '/MyService')
{
entity Users as select from demo.Users;
entity Projects as select from demo.Projects;

}