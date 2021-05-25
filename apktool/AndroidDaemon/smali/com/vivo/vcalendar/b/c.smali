.class public final Lcom/vivo/vcalendar/b/c;
.super Lcom/vivo/vcalendar/b/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "ATTENDEE"

    invoke-direct {p0, v0, p1}, Lcom/vivo/vcalendar/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Attendee"

    const-string v1, "Constructor: ATTENDEE property created."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final parseDbCursorInfo(Landroid/database/Cursor;)V
    .locals 3

    const-string v0, "Attendee"

    const-string v1, "parseDbCursorInfo started"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/b/l;->parseDbCursorInfo(Landroid/database/Cursor;)V

    const-string v0, "attendeeName"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/vivo/vcalendar/a/a;

    invoke-direct {v1, v0}, Lcom/vivo/vcalendar/a/a;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/vivo/vcalendar/b/c;->addParameter(Lcom/vivo/vcalendar/a/c;)V

    :cond_0
    const-string v0, "attendeeEmail"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUserCalAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/vivo/vcalendar/b/c;->b:Ljava/lang/String;

    :cond_1
    const-string v0, "attendeeStatus"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/vivo/vcalendar/a/d;->getPartstatString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/vivo/vcalendar/a/d;

    invoke-direct {v1, v0}, Lcom/vivo/vcalendar/a/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/vivo/vcalendar/b/c;->addParameter(Lcom/vivo/vcalendar/a/c;)V

    const-string v0, "attendeeRelationship"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/vivo/vcalendar/a/h;->getXRelationshipString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ORGANIZER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/vivo/vcalendar/a/e;

    const-string v2, "CHAIR"

    invoke-direct {v1, v2}, Lcom/vivo/vcalendar/a/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/vivo/vcalendar/b/c;->addParameter(Lcom/vivo/vcalendar/a/c;)V

    :cond_2
    new-instance v1, Lcom/vivo/vcalendar/a/h;

    invoke-direct {v1, v0}, Lcom/vivo/vcalendar/a/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/vivo/vcalendar/b/c;->addParameter(Lcom/vivo/vcalendar/a/c;)V

    const-string v0, "attendeeType"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/vivo/vcalendar/a/e;->getRoleString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/vivo/vcalendar/b/c;->a:Ljava/util/LinkedHashMap;

    const-string v2, "ROLE"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lcom/vivo/vcalendar/a/e;

    invoke-direct {v1, v0}, Lcom/vivo/vcalendar/a/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/vivo/vcalendar/b/c;->addParameter(Lcom/vivo/vcalendar/a/c;)V

    :cond_3
    return-void
.end method

.method public final toAttendeesContentValue(Ljava/util/LinkedList;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "Attendee"

    const-string v1, "toAttendeesContentValue: started."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/b/l;->toAttendeesContentValue(Ljava/util/LinkedList;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/b/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUserMail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    iget-object v0, p0, Lcom/vivo/vcalendar/b/c;->a:Ljava/util/LinkedHashMap;

    const-string v2, "X-RELATIONSHIP"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "X-RELATIONSHIP"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/b/c;->getFirstParameter(Ljava/lang/String;)Lcom/vivo/vcalendar/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vivo/vcalendar/a/c;->toAttendeesContentValue(Landroid/content/ContentValues;)V

    :cond_0
    invoke-virtual {p0}, Lcom/vivo/vcalendar/b/c;->getParameterNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/vivo/vcalendar/b/c;->a:Ljava/util/LinkedHashMap;

    const-string v2, "X-RELATIONSHIP"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vivo/vcalendar/b/c;->a:Ljava/util/LinkedHashMap;

    const-string v2, "ROLE"

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "attendeeRelationship"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "attendeeType"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_2
    const-string v0, "attendeeEmail"

    iget-object v2, p0, Lcom/vivo/vcalendar/b/c;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUserMail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "X-RELATIONSHIP"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/b/c;->getFirstParameter(Ljava/lang/String;)Lcom/vivo/vcalendar/a/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/vivo/vcalendar/a/c;->toAttendeesContentValue(Landroid/content/ContentValues;)V

    goto :goto_0
.end method

.method public final toEventsContentValue(Landroid/content/ContentValues;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/b/l;->toEventsContentValue(Landroid/content/ContentValues;)V

    const-string v0, "ROLE"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/b/c;->getFirstParameter(Ljava/lang/String;)Lcom/vivo/vcalendar/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/vcalendar/a/c;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHAIR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vivo/vcalendar/b/c;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUserMail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "organizer"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "hasAttendeeData"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void
.end method
