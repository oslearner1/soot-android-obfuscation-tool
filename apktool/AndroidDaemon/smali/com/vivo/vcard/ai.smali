.class public final Lcom/vivo/vcard/ai;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/List;

.field private c:Ljava/util/Map;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;

.field private f:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcard/ai;->c:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final addGroup(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/ai;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcard/ai;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/ai;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcard/ai;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "TYPE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    iget-object v1, p0, Lcom/vivo/vcard/ai;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/vivo/vcard/ai;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    goto :goto_1
.end method

.method public final addValues(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/ai;->e:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/vivo/vcard/ai;->e:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/ai;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final varargs addValues([Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcard/ai;->e:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vcard/ai;->e:Ljava/util/List;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcard/ai;->e:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public final getByteValue()[B
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/ai;->f:[B

    return-object v0
.end method

.method public final getGroupList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/ai;->b:Ljava/util/List;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/ai;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getParameterMap()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/ai;->c:Ljava/util/Map;

    return-object v0
.end method

.method public final getParameters(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/ai;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public final getRawValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/ai;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getValueList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/ai;->e:Ljava/util/List;

    return-object v0
.end method

.method public final setByteValue([B)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/ai;->f:[B

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/vivo/vcard/ai;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "vCard"

    const-string v1, "Property name is re-defined (existing: %s, requested: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/vivo/vcard/ai;->a:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/vivo/vcard/ai;->a:Ljava/lang/String;

    return-void
.end method

.method public final setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcard/ai;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-virtual {p0, p1, p2}, Lcom/vivo/vcard/ai;->addParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final setRawValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/ai;->d:Ljava/lang/String;

    return-void
.end method

.method public final setValues(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcard/ai;->e:Ljava/util/List;

    return-void
.end method

.method public final varargs setValues([Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vcard/ai;->e:Ljava/util/List;

    return-void
.end method
