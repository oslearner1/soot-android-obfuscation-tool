.class public Lcom/vivo/vcalendar/b/l;
.super Ljava/lang/Object;


# instance fields
.field protected a:Ljava/util/LinkedHashMap;

.field protected b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcalendar/b/l;->a:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/vivo/vcalendar/b/l;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcalendar/b/l;->a:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/vivo/vcalendar/b/l;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/vcalendar/b/l;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 4

    iget-object v0, p0, Lcom/vivo/vcalendar/b/l;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vivo/vcalendar/b/l;->getParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/vcalendar/b/l;->b:Ljava/lang/String;

    const-string v1, "Property"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "toString, value="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "ENCODING"

    invoke-virtual {p0, v1}, Lcom/vivo/vcalendar/b/l;->getFirstParameter(Ljava/lang/String;)Lcom/vivo/vcalendar/a/c;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/vivo/vcalendar/b/l;->b:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/vivo/vcalendar/a/c;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->encoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Property"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "toString, after do encoding, value="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/b/l;->getParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/a/c;

    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lcom/vivo/vcalendar/a/c;->toString(Ljava/lang/StringBuilder;)V

    goto :goto_0
.end method


# virtual methods
.method public addParameter(Lcom/vivo/vcalendar/a/c;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "ENCODING"

    invoke-virtual {p1}, Lcom/vivo/vcalendar/a/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "QUOTED-PRINTABLE"

    invoke-virtual {p1}, Lcom/vivo/vcalendar/a/c;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/vivo/vcalendar/b/l;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/vivo/vcalendar/a/c;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/vivo/vcalendar/b/l;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lcom/vivo/vcalendar/a/c;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getFirstParameter(Ljava/lang/String;)Lcom/vivo/vcalendar/a/c;
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcalendar/b/l;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/a/c;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/b/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getParameterNames()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/b/l;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/b/l;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/b/l;->b:Ljava/lang/String;

    return-object v0
.end method

.method public parseDbCursorInfo(Landroid/database/Cursor;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;

    const-string v1, "Expected Property Cursor queried from DB cannot be null or empty."

    invoke-direct {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/vcalendar/b/l;->b:Ljava/lang/String;

    return-void
.end method

.method public toAlarmsContentValue(Landroid/content/ContentValues;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "Property"

    const-string v1, "toAlarmsContentValue: the argument ContentValue must not be null."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;

    invoke-direct {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public toAttendeesContentValue(Ljava/util/LinkedList;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "Property"

    const-string v1, "toAttendeesContentValue: the argument ContentValue must not be null."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;

    invoke-direct {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public toEventsContentValue(Landroid/content/ContentValues;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "Property"

    const-string v1, "toEventsContentValue: the argument ContentValue must not be null."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;

    invoke-direct {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v0}, Lcom/vivo/vcalendar/b/l;->a(Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
