.class public final Lcom/vivo/vcalendar/b/f;
.super Lcom/vivo/vcalendar/b/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DTEND"

    invoke-direct {p0, v0, p1}, Lcom/vivo/vcalendar/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "DtEnd"

    const-string v1, "Constructor: DTEND property created."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValueMillis()J
    .locals 2

    const-string v0, "TZID"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/b/f;->getFirstParameter(Ljava/lang/String;)Lcom/vivo/vcalendar/a/c;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/a/f;

    if-nez v0, :cond_0

    const-string v0, "UTC"

    :goto_0
    iget-object v1, p0, Lcom/vivo/vcalendar/b/f;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUtcTimeMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/vivo/vcalendar/a/f;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final toEventsContentValue(Landroid/content/ContentValues;)V
    .locals 3

    const-string v0, "DtEnd"

    const-string v1, "toEventsContentValue started."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/b/l;->toEventsContentValue(Landroid/content/ContentValues;)V

    const-string v0, "TZID"

    invoke-virtual {p0, v0}, Lcom/vivo/vcalendar/b/f;->getFirstParameter(Ljava/lang/String;)Lcom/vivo/vcalendar/a/c;

    move-result-object v0

    check-cast v0, Lcom/vivo/vcalendar/a/f;

    if-nez v0, :cond_0

    const-string v0, "UTC"

    :goto_0
    iget-object v1, p0, Lcom/vivo/vcalendar/b/f;->b:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getUtcTimeMillis(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "dtend"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/vivo/vcalendar/a/f;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
