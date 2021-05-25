.class public final Lcom/vivo/vcalendar/b/h;
.super Lcom/vivo/vcalendar/b/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DTSTART"

    invoke-direct {p0, v0, p1}, Lcom/vivo/vcalendar/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DtStart"

    const-string v1, "Constructor: DtStart property created"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValueMillis()J
    .locals 2

    const-string v0, "TZID"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/b/h;->getFirstParameter(Ljava/lang/String;)Lcom/vivo/vcalendar/a/c;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/a/f;

    if-nez v0, :cond_0

    const-string v0, "UTC"

    :goto_0
    iget-object v1, p0, Lcom/vivo/vcalendar/b/h;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUtcTimeMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/vivo/vcalendar/a/f;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final toEventsContentValue(Landroid/content/ContentValues;)V
    .locals 5

    const-string v0, "DtStart"

    const-string v1, "toEventsContentValue started."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/b/l;->toEventsContentValue(Landroid/content/ContentValues;)V

    const-string v0, "TZID"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/b/h;->getFirstParameter(Ljava/lang/String;)Lcom/vivo/vcalendar/a/c;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/a/f;

    if-nez v0, :cond_1

    const-string v0, "UTC"

    :goto_0
    const-string v1, "VALUE"

    invoke-virtual {p0, v1}, Lcom/vivo/vcalendar/b/h;->getFirstParameter(Ljava/lang/String;)Lcom/vivo/vcalendar/a/c;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "DATE"

    invoke-virtual {v1}, Lcom/vivo/vcalendar/a/c;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/vivo/vcalendar/b/h;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUtcDateMillis(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "dtstart"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/vivo/vcalendar/a/f;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/vivo/vcalendar/b/h;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUtcTimeMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "dtstart"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "eventTimezone"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    const-string v2, "eventTimezone"

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "DtStart"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "set a timezone, timezone.getID()="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ";tzid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
