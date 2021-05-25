.class public final Lcom/vivo/vcalendar/component/b;
.super Lcom/vivo/vcalendar/component/a;


# direct methods
.method public constructor <init>(Lcom/vivo/vcalendar/component/a;)V
    .locals 2

    const-string v0, "VALARM"

    invoke-direct {p0, v0, p1}, Lcom/vivo/vcalendar/component/a;-><init>(Ljava/lang/String;Lcom/vivo/vcalendar/component/a;)V

    const-string v0, "VAlarm"

    const-string v1, "Constructor: VALARM Component created."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final parseCursorInfo(Landroid/database/Cursor;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/component/a;->parseCursorInfo(Landroid/database/Cursor;)V

    const-string v0, "method"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/vivo/vcalendar/b/b;->getActionString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/vivo/vcalendar/b/b;

    invoke-direct {v1, v0}, Lcom/vivo/vcalendar/b/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/vivo/vcalendar/component/b;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    :cond_0
    const-string v0, "minutes"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    mul-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getDurationString(J)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lcom/vivo/vcalendar/b/p;

    invoke-direct {v1, v0}, Lcom/vivo/vcalendar/b/p;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/vivo/vcalendar/component/b;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    :cond_1
    new-instance v0, Lcom/vivo/vcalendar/b/e;

    const-string v1, "Reminder"

    invoke-direct {v0, v1}, Lcom/vivo/vcalendar/b/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/b;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    return-void
.end method

.method public final toAlarmsContentValue(Ljava/util/LinkedList;)V
    .locals 3

    const-string v0, "VAlarm"

    const-string v1, "toAlarmsContentValue: started."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/component/a;->toAlarmsContentValue(Ljava/util/LinkedList;)V

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0}, Lcom/vivo/vcalendar/component/b;->getPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/b;->getFirstProperty(Ljava/lang/String;)Lcom/vivo/vcalendar/b/l;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vivo/vcalendar/b/l;->toAlarmsContentValue(Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public final toEventsContentValue(Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "VAlarm"

    const-string v1, "toEventsContentValue: started."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/component/a;->toEventsContentValue(Landroid/content/ContentValues;)V

    const-string v0, "hasAlarm"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "hasAlarm"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_0
    return-void
.end method
