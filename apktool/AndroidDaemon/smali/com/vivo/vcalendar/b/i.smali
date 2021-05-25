.class public final Lcom/vivo/vcalendar/b/i;
.super Lcom/vivo/vcalendar/b/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DURATION"

    invoke-direct {p0, v0, p1}, Lcom/vivo/vcalendar/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Duration"

    const-string v1, "Constructor: DURATION property created."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValueMillis()J
    .locals 2

    iget-object v0, p0, Lcom/vivo/vcalendar/b/i;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getDurationMillis(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final toEventsContentValue(Landroid/content/ContentValues;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/b/l;->toEventsContentValue(Landroid/content/ContentValues;)V

    const-string v0, "Duration"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "toEventsContentValue, duration="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vivo/vcalendar/b/i;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "duration"

    iget-object v1, p0, Lcom/vivo/vcalendar/b/i;->b:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
