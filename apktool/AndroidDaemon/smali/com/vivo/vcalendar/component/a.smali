.class public Lcom/vivo/vcalendar/component/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Ljava/util/LinkedHashMap;

.field private b:Ljava/lang/String;

.field private final c:Lcom/vivo/vcalendar/component/a;

.field private d:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/vivo/vcalendar/component/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcalendar/component/a;->d:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/vivo/vcalendar/component/a;->a:Ljava/util/LinkedHashMap;

    iput-object p1, p0, Lcom/vivo/vcalendar/component/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/vivo/vcalendar/component/a;->c:Lcom/vivo/vcalendar/component/a;

    return-void
.end method


# virtual methods
.method public addChild(Lcom/vivo/vcalendar/component/a;)V
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/component/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addProperty(Lcom/vivo/vcalendar/b/l;)V
    .locals 3

    invoke-virtual {p1}, Lcom/vivo/vcalendar/b/l;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/vivo/vcalendar/component/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/vivo/vcalendar/component/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getComponents()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/component/a;->d:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getFirstProperty(Ljava/lang/String;)Lcom/vivo/vcalendar/b/l;
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcalendar/component/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/b/l;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/component/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Lcom/vivo/vcalendar/component/a;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/component/a;->c:Lcom/vivo/vcalendar/component/a;

    return-object v0
.end method

.method public getProperties(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/component/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public getPropertyNames()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/vivo/vcalendar/component/a;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public parseCursorInfo(Landroid/database/Cursor;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;

    const-string v1, "the cursor describling the Expected Component  info cannot be null"

    invoke-direct {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    return-void
.end method

.method public toAlarmsContentValue(Ljava/util/LinkedList;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "Component"

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

    const-string v0, "Component"

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

    const-string v0, "Component"

    const-string v1, "toEventsContentValue: the argument ContentValue must not be null."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;

    invoke-direct {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/a;->toString(Ljava/lang/StringBuilder;)V

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/lang/StringBuilder;)V
    .locals 3

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "BEGIN"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/vcalendar/component/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/vivo/vcalendar/component/a;->getPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/vivo/vcalendar/component/a;->d:Ljava/util/LinkedList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/vcalendar/component/a;->d:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    const-string v0, "END"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/vivo/vcalendar/component/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/a;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/b/l;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/b/l;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/component/a;

    invoke-virtual {v0, p1}, Lcom/vivo/vcalendar/component/a;->toString(Ljava/lang/StringBuilder;)V

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
