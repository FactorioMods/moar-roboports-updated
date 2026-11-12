require("prototypes.entity")
require("prototypes.item")
require("prototypes.recipe")
require("prototypes.technology")
-- Migrate removed 1.1 recipe encodings without changing normal-mode quantities.
for _,r in pairs(data.raw.recipe) do
 if r.normal then for k,v in pairs(r.normal) do r[k]=v end;r.normal=nil;r.expensive=nil end
 for _,i in pairs(r.ingredients or {}) do if i[1] then i.type="item";i.name=i[1];i.amount=i[2];i[1]=nil;i[2]=nil end end
 if r.result then r.results={{type="item",name=r.result,amount=r.result_count or 1}};r.result=nil;r.result_count=nil end
end
