.class public final Lcom/vivo/vcalendar/component/e;
.super Lcom/vivo/vcalendar/component/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "VEVENT"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vivo/vcalendar/component/a;-><init>(Ljava/lang/String;Lcom/vivo/vcalendar/component/a;)V

    const-string v0, "VEvent"

    const-string v1, "Constructor: VEvent component created!"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a()J
    .locals 4

    const-string v0, "DTEND"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getFirstProperty(Ljava/lang/String;)Lcom/vivo/vcalendar/b/l;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/b/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/vcalendar/b/f;->getValueMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getFirstProperty(Ljava/lang/String;)Lcom/vivo/vcalendar/b/l;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/b/h;

    if-nez v0, :cond_1

    new-instance v0, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;

    const-string v1, "DTSTART is a required property."

    invoke-direct {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string v1, "DURATION"

    invoke-virtual {p0, v1}, Lcom/vivo/vcalendar/component/e;->getFirstProperty(Ljava/lang/String;)Lcom/vivo/vcalendar/b/l;

    move-result-object v1

    check-cast v1, Lcom/vivo/vcalendar/b/i;

    if-eqz v1, :cond_2

    const-string v2, "VEvent"

    const-string v3, "Can not get DtEnd, return value based on the duration."

    invoke-static {v2, v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/vcalendar/b/h;->getValueMillis()J

    move-result-wide v2

    invoke-virtual {v1}, Lcom/vivo/vcalendar/b/i;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getDurationMillis(Ljava/lang/String;)J

    move-result-wide v0

    add-long/2addr v0, v2

    goto :goto_0

    :cond_2
    const-string v1, "VEvent"

    const-string v2, "Can not get DtEnd & Duration, return value based on the dtstart."

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vivo/vcalendar/b/h;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUtcDateMillis(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method private b()Z
    .locals 5

    const/4 v2, 0x1

    const-string v0, "VEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "isAllDayEvent: sVersion = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/vivo/vcalendar/component/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getFirstProperty(Ljava/lang/String;)Lcom/vivo/vcalendar/b/l;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/b/h;

    const-string v1, "VALUE"

    invoke-virtual {v0, v1}, Lcom/vivo/vcalendar/b/h;->getFirstParameter(Ljava/lang/String;)Lcom/vivo/vcalendar/a/c;

    move-result-object v1

    check-cast v1, Lcom/vivo/vcalendar/a/g;

    if-eqz v1, :cond_0

    const-string v3, "DATE"

    invoke-virtual {v1}, Lcom/vivo/vcalendar/a/g;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "VEvent"

    const-string v1, "isAllDayEvent: TRUE."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v1, "TZID"

    invoke-virtual {v0, v1}, Lcom/vivo/vcalendar/b/h;->getFirstParameter(Ljava/lang/String;)Lcom/vivo/vcalendar/a/c;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/a/f;

    if-eqz v0, :cond_1

    const-string v1, "UTC"

    invoke-virtual {v0}, Lcom/vivo/vcalendar/a/f;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "VEvent"

    const-string v1, "isAllDayEvent: TRUE."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_1
    const-string v0, "X-ALLDAY"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getFirstProperty(Ljava/lang/String;)Lcom/vivo/vcalendar/b/l;

    move-result-object v0

    const-string v1, "x-ALLDAY"

    invoke-virtual {p0, v1}, Lcom/vivo/vcalendar/component/e;->getFirstProperty(Ljava/lang/String;)Lcom/vivo/vcalendar/b/l;

    move-result-object v1

    if-eqz v0, :cond_2

    const-string v3, "1"

    invoke-virtual {v0}, Lcom/vivo/vcalendar/b/l;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    if-eqz v1, :cond_4

    const-string v1, "1"

    invoke-virtual {v0}, Lcom/vivo/vcalendar/b/l;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const-string v0, "VEvent"

    const-string v1, "isAllDayEvent: TRUE."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final getDtStart()J
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcalendar/component/e;->a:Ljava/util/LinkedHashMap;

    const-string v1, "DTSTART"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;

    const-string v1, "DTSTART is a required property."

    invoke-direct {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getFirstProperty(Ljava/lang/String;)Lcom/vivo/vcalendar/b/l;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/b/h;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/b/h;->getValueMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getOrganizer()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const-string v0, "VEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getOrganizer: sVersion = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/vivo/vcalendar/component/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ORGANIZER"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getFirstProperty(Ljava/lang/String;)Lcom/vivo/vcalendar/b/l;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/vcalendar/b/l;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUserMail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ATTENDEE"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "VEvent"

    const-string v2, "getOrganizer: no attendee property."

    invoke-static {v0, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/b/l;

    const-string v3, "ROLE"

    invoke-virtual {v0, v3}, Lcom/vivo/vcalendar/b/l;->getFirstParameter(Ljava/lang/String;)Lcom/vivo/vcalendar/a/c;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v4, "CHAIR"

    invoke-virtual {v3}, Lcom/vivo/vcalendar/a/c;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_4
    const-string v4, "ORGANIZER"

    invoke-virtual {v3}, Lcom/vivo/vcalendar/a/c;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_5
    invoke-virtual {v0}, Lcom/vivo/vcalendar/b/l;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUserMail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final getTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    invoke-direct {p0}, Lcom/vivo/vcalendar/component/e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v5, 0x2012

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/vivo/vcalendar/component/e;->getDtStart()J

    move-result-wide v1

    invoke-direct {p0}, Lcom/vivo/vcalendar/component/e;->a()J

    move-result-wide v3

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/16 v5, 0x11

    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v5, 0x91

    goto :goto_0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    const-string v0, "SUMMARY"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getFirstProperty(Ljava/lang/String;)Lcom/vivo/vcalendar/b/l;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/b/o;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/vivo/vcalendar/b/o;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final parseCursorInfo(Landroid/database/Cursor;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    const-string v0, "VEvent"

    const-string v3, "parseCursorInfo : begin."

    invoke-static {v0, v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/component/a;->parseCursorInfo(Landroid/database/Cursor;)V

    new-instance v3, Lcom/vivo/vcalendar/a/c;

    const-string v0, "ENCODING"

    const-string v4, "QUOTED-PRINTABLE"

    invoke-direct {v3, v0, v4}, Lcom/vivo/vcalendar/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/vivo/vcalendar/a/c;

    const-string v0, "CHARSET"

    const-string v5, "UTF-8"

    invoke-direct {v4, v0, v5}, Lcom/vivo/vcalendar/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lcom/vivo/vcalendar/b/q;

    invoke-direct {v5, v0}, Lcom/vivo/vcalendar/b/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    :cond_0
    const-string v0, "title"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    new-instance v5, Lcom/vivo/vcalendar/b/o;

    invoke-direct {v5, v0}, Lcom/vivo/vcalendar/b/o;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/vivo/vcalendar/b/l;->addParameter(Lcom/vivo/vcalendar/a/c;)V

    invoke-virtual {v5, v4}, Lcom/vivo/vcalendar/b/l;->addParameter(Lcom/vivo/vcalendar/a/c;)V

    invoke-virtual {p0, v5}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    :cond_1
    invoke-static {}, Lcom/vivo/vcalendar/component/VComponentBuilder;->isVersionIcsOrLower()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "VEvent"

    const-string v5, "parseCursorInfo,OS Version is <=15."

    invoke-static {v0, v5}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    const-string v5, "modifyTime"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2

    const-string v0, "modifyTime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    const-string v5, "createTime"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_3

    if-nez v0, :cond_3

    const-string v0, "createTime"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9

    new-instance v5, Lcom/vivo/vcalendar/b/g;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUtcTimeString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/vivo/vcalendar/b/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    :goto_1
    const-string v0, "eventStatus"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/vivo/vcalendar/b/n;->getStatusString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v5, Lcom/vivo/vcalendar/b/n;

    invoke-direct {v5, v0}, Lcom/vivo/vcalendar/b/n;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    :cond_4
    const-string v0, "organizer"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUserCalAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    new-instance v5, Lcom/vivo/vcalendar/b/l;

    const-string v6, "ORGANIZER"

    invoke-direct {v5, v6, v0}, Lcom/vivo/vcalendar/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    :cond_5
    const-string v0, "eventLocation"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    new-instance v5, Lcom/vivo/vcalendar/b/k;

    invoke-direct {v5, v0}, Lcom/vivo/vcalendar/b/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/vivo/vcalendar/b/l;->addParameter(Lcom/vivo/vcalendar/a/c;)V

    invoke-virtual {v5, v4}, Lcom/vivo/vcalendar/b/l;->addParameter(Lcom/vivo/vcalendar/a/c;)V

    invoke-virtual {p0, v5}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    :cond_6
    const-string v0, "description"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    new-instance v5, Lcom/vivo/vcalendar/b/e;

    const-string v6, "\r\n"

    const-string v7, "\n"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/vivo/vcalendar/b/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lcom/vivo/vcalendar/b/l;->addParameter(Lcom/vivo/vcalendar/a/c;)V

    invoke-virtual {v5, v4}, Lcom/vivo/vcalendar/b/l;->addParameter(Lcom/vivo/vcalendar/a/c;)V

    invoke-virtual {p0, v5}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    :cond_7
    const-string v0, "allDay"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v1, :cond_a

    move v0, v1

    :goto_2
    const-string v3, "dtstart"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-eqz v4, :cond_b

    new-instance v0, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;

    const-string v1, "Cannot create DtStart, the needed \"DtStart\" does not exist in DB."

    invoke-direct {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const-string v0, "VEvent"

    const-string v5, "parseCursorInfo,OS Version is > 15."

    invoke-static {v0, v5}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Lcom/vivo/vcalendar/b/g;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUtcTimeString(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/vivo/vcalendar/b/g;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    goto/16 :goto_1

    :cond_a
    move v0, v2

    goto :goto_2

    :cond_b
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    if-eqz v0, :cond_11

    invoke-static {v3, v4}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUtcTimeString(J)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/vivo/vcalendar/b/h;

    invoke-direct {v3, v4}, Lcom/vivo/vcalendar/b/h;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/vivo/vcalendar/a/f;

    const-string v5, "eventTimezone"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vivo/vcalendar/a/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/vivo/vcalendar/b/h;->addParameter(Lcom/vivo/vcalendar/a/c;)V

    :goto_3
    invoke-virtual {p0, v3}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    const-string v3, "duration"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_c

    new-instance v4, Lcom/vivo/vcalendar/b/i;

    invoke-direct {v4, v3}, Lcom/vivo/vcalendar/b/i;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    :cond_c
    iget-object v3, p0, Lcom/vivo/vcalendar/component/e;->a:Ljava/util/LinkedHashMap;

    const-string v4, "DURATION"

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "dtend"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    if-eqz v0, :cond_12

    invoke-static {v3, v4}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUtcTimeString(J)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/vivo/vcalendar/b/f;

    invoke-direct {v3, v4}, Lcom/vivo/vcalendar/b/f;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/vivo/vcalendar/a/f;

    const-string v5, "eventTimezone"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vivo/vcalendar/a/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/vivo/vcalendar/b/f;->addParameter(Lcom/vivo/vcalendar/a/c;)V

    :goto_4
    invoke-virtual {p0, v3}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    :cond_d
    if-eqz v0, :cond_13

    new-instance v3, Lcom/vivo/vcalendar/b/l;

    const-string v4, "X-ALLDAY"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/vivo/vcalendar/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    :goto_5
    const-string v3, "rrule"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_e

    new-instance v4, Lcom/vivo/vcalendar/b/m;

    invoke-direct {v4, v3}, Lcom/vivo/vcalendar/b/m;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    :cond_e
    const-string v3, "eventTimezone"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_f

    new-instance v4, Lcom/vivo/vcalendar/b/l;

    const-string v5, "X-BBK-TIMEZONE"

    invoke-direct {v4, v5, v3}, Lcom/vivo/vcalendar/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    :cond_f
    sget-object v3, Lcom/vivo/vcalendar/c;->ORIGINAL_ID:Ljava/lang/String;

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_15

    new-instance v2, Lcom/vivo/vcalendar/b/l;

    const-string v4, "RELATED-TO"

    invoke-direct {v2, v4, v3}, Lcom/vivo/vcalendar/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    :goto_6
    if-eqz v1, :cond_10

    const-string v1, "originalInstanceTime"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    if-eqz v0, :cond_14

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUtcTimeString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/vivo/vcalendar/b/j;

    invoke-direct {v0, v1}, Lcom/vivo/vcalendar/b/j;-><init>(Ljava/lang/String;)V

    :goto_7
    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    :cond_10
    return-void

    :cond_11
    invoke-static {v3, v4}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUtcTimeString(J)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/vivo/vcalendar/b/h;

    invoke-direct {v3, v4}, Lcom/vivo/vcalendar/b/h;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/vivo/vcalendar/a/f;

    const-string v5, "eventTimezone"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vivo/vcalendar/a/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/vivo/vcalendar/b/h;->addParameter(Lcom/vivo/vcalendar/a/c;)V

    goto/16 :goto_3

    :cond_12
    invoke-static {v3, v4}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUtcTimeString(J)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/vivo/vcalendar/b/f;

    invoke-direct {v3, v4}, Lcom/vivo/vcalendar/b/f;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/vivo/vcalendar/a/f;

    const-string v5, "eventTimezone"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/vivo/vcalendar/a/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/vivo/vcalendar/b/f;->addParameter(Lcom/vivo/vcalendar/a/c;)V

    goto/16 :goto_4

    :cond_13
    new-instance v3, Lcom/vivo/vcalendar/b/l;

    const-string v4, "X-ALLDAY"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/vivo/vcalendar/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    goto/16 :goto_5

    :cond_14
    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUtcTimeString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/vivo/vcalendar/b/j;

    invoke-direct {v0, v1}, Lcom/vivo/vcalendar/b/j;-><init>(Ljava/lang/String;)V

    goto :goto_7

    :cond_15
    move v1, v2

    goto :goto_6
.end method

.method public final parseVEventInfo(Lcom/vivo/vcalendar/g;)V
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/vivo/vcalendar/g;->getVEventCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->parseCursorInfo(Landroid/database/Cursor;)V

    invoke-virtual {p1}, Lcom/vivo/vcalendar/g;->getVEventCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1}, Lcom/vivo/vcalendar/g;->getAlertsCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v0, v1

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lt v0, v3, :cond_0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    invoke-virtual {p1}, Lcom/vivo/vcalendar/g;->getAttendeesCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lt v1, v2, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :cond_0
    new-instance v3, Lcom/vivo/vcalendar/component/b;

    invoke-direct {v3, p0}, Lcom/vivo/vcalendar/component/b;-><init>(Lcom/vivo/vcalendar/component/a;)V

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-static {v2, v4}, Lcom/vivo/vcalendar/e;->matrixCursorFromCursorRow(Landroid/database/Cursor;I)Landroid/database/MatrixCursor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/vivo/vcalendar/component/b;->parseCursorInfo(Landroid/database/Cursor;)V

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0, v3}, Lcom/vivo/vcalendar/component/e;->addChild(Lcom/vivo/vcalendar/component/a;)V

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/vivo/vcalendar/b/c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/vivo/vcalendar/b/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    invoke-static {v0, v3}, Lcom/vivo/vcalendar/e;->matrixCursorFromCursorRow(Landroid/database/Cursor;I)Landroid/database/MatrixCursor;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/vcalendar/b/c;->parseDbCursorInfo(Landroid/database/Cursor;)V

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {p0, v2}, Lcom/vivo/vcalendar/component/e;->addProperty(Lcom/vivo/vcalendar/b/l;)V

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final toAlarmsContentValue(Ljava/util/LinkedList;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/component/a;->toAlarmsContentValue(Ljava/util/LinkedList;)V

    sget-object v0, Lcom/vivo/vcalendar/component/c;->b:Ljava/lang/String;

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/vivo/vcalendar/component/e;->getDtStart()J

    move-result-wide v2

    const-string v0, "VEvent"

    const-string v1, "toAlarmsContentValue: version 1.0 "

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AALARM"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "DALARM"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/b/l;

    check-cast v0, Lcom/vivo/vcalendar/b/a;

    invoke-virtual {v0, p1, v2, v3}, Lcom/vivo/vcalendar/b/a;->toAlarmsContentValue(Ljava/util/LinkedList;J)V

    goto :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/vcalendar/b/l;

    invoke-virtual {v1}, Lcom/vivo/vcalendar/b/l;->getValue()Ljava/lang/String;

    move-result-object v5

    const-string v0, "AALARM"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/b/l;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/b/l;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/vivo/vcalendar/b/d;

    invoke-virtual {v0, p1, v2, v3}, Lcom/vivo/vcalendar/b/d;->toAlarmsContentValue(Ljava/util/LinkedList;J)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/vivo/vcalendar/component/e;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/component/a;

    invoke-virtual {v0, p1}, Lcom/vivo/vcalendar/component/a;->toAlarmsContentValue(Ljava/util/LinkedList;)V

    goto :goto_2
.end method

.method public final toAttendeesContentValue(Ljava/util/LinkedList;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/component/a;->toAttendeesContentValue(Ljava/util/LinkedList;)V

    const-string v0, "ATTENDEE"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const-string v1, "VEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "toAttendeesContentValue, attendees list:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v0, "ATTENDEE"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/b/l;

    check-cast v0, Lcom/vivo/vcalendar/b/c;

    invoke-virtual {v0, p1}, Lcom/vivo/vcalendar/b/c;->toAttendeesContentValue(Ljava/util/LinkedList;)V

    goto :goto_0
.end method

.method public final toEventsContentValue(Landroid/content/ContentValues;)V
    .locals 8

    const/4 v7, 0x1

    const-string v0, "VEvent"

    const-string v1, "toEventsContentValue."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/component/a;->toEventsContentValue(Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/component/e;->a:Ljava/util/LinkedHashMap;

    const-string v1, "DTSTART"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;

    const-string v1, "VEVENT did not contains the required UID or DTSTART"

    invoke-direct {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lcom/vivo/vcalendar/component/e;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const-string v0, "hasAlarm"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    sget-object v0, Lcom/vivo/vcalendar/component/c;->b:Ljava/lang/String;

    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vivo/vcalendar/component/e;->a:Ljava/util/LinkedHashMap;

    const-string v1, "DTEND"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vivo/vcalendar/component/e;->a:Ljava/util/LinkedHashMap;

    const-string v1, "DURATION"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "VEvent"

    const-string v1, "toEventsContentValue : DTEND DURATION cannot exist at the same VEvent"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;

    const-string v1, "DTEND, DURATION cannot exist at the same VEvent"

    invoke-direct {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder$FormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/vivo/vcalendar/component/e;->getPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/vivo/vcalendar/component/e;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "allDay"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "eventTimezone"

    const-string v0, "UTC"

    move-object v2, p1

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v0, "VEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event\'s EVENT_TIMEZONE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "eventTimezone"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/component/e;->a:Ljava/util/LinkedHashMap;

    const-string v1, "DTSTART"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/vivo/vcalendar/component/e;->a:Ljava/util/LinkedHashMap;

    const-string v1, "DTEND"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/vivo/vcalendar/component/e;->a:Ljava/util/LinkedHashMap;

    const-string v1, "DURATION"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "DTSTART"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getFirstProperty(Ljava/lang/String;)Lcom/vivo/vcalendar/b/l;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/b/h;

    invoke-virtual {v0}, Lcom/vivo/vcalendar/b/h;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUtcDateMillis(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "dtend"

    const-wide/32 v3, 0x5265c00

    add-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_5
    invoke-virtual {p0}, Lcom/vivo/vcalendar/component/e;->getComponents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "duration"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "VEvent"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Remove DTEND when event has DURATION:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "duration"

    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dtend"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_6
    const-string v0, "rrule"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "dtend"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "dtend"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v0, "duration"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/vivo/vcalendar/component/e;->a()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/vivo/vcalendar/component/e;->getDtStart()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getDurationString(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "duration"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "VEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "toEventsContentValue : propertyName = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VEvent"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "toEventsContentValue :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'s count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getProperties(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vivo/vcalendar/b/l;

    const-string v5, "EXDATE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/vivo/vcalendar/component/e;->a:Ljava/util/LinkedHashMap;

    const-string v6, "RELATED-TO"

    invoke-virtual {v5, v6}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "RELATED-TO"

    invoke-virtual {p0, v5}, Lcom/vivo/vcalendar/component/e;->getFirstProperty(Ljava/lang/String;)Lcom/vivo/vcalendar/b/l;

    move-result-object v5

    sget-object v6, Lcom/vivo/vcalendar/c;->ORIGINAL_ID:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/vivo/vcalendar/b/l;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/vivo/vcalendar/b/l;->toEventsContentValue(Landroid/content/ContentValues;)V

    const-string v1, "deleted"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v1, "deleted"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v1, "originalInstanceTime"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {p1, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v1, p1}, Lcom/vivo/vcalendar/b/l;->toEventsContentValue(Landroid/content/ContentValues;)V

    const-string v1, "deleted"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const-string v1, "deleted"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "EXDATE"

    invoke-static {p1, v1, v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->putStringArrayList(Landroid/content/ContentValues;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_2

    :cond_a
    invoke-virtual {v1, p1}, Lcom/vivo/vcalendar/b/l;->toEventsContentValue(Landroid/content/ContentValues;)V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/vivo/vcalendar/component/e;->a:Ljava/util/LinkedHashMap;

    const-string v1, "X-BBK-TIMEZONE"

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "X-BBK-TIMEZONE"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/component/e;->getFirstProperty(Ljava/lang/String;)Lcom/vivo/vcalendar/b/l;

    move-result-object v0

    const-string v1, "eventTimezone"

    invoke-virtual {v0}, Lcom/vivo/vcalendar/b/l;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/vivo/vcalendar/component/VComponentBuilder;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    move-object v2, p1

    goto/16 :goto_0

    :cond_c
    invoke-virtual {v0}, Lcom/vivo/vcalendar/b/l;->getValue()Ljava/lang/String;

    move-result-object v0

    move-object v2, p1

    goto/16 :goto_0

    :cond_d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/component/a;

    invoke-virtual {v0, p1}, Lcom/vivo/vcalendar/component/a;->toEventsContentValue(Landroid/content/ContentValues;)V

    goto/16 :goto_1
.end method
