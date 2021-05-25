.class public final Lcom/vivo/vcalendar/b/p;
.super Lcom/vivo/vcalendar/b/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "TRIGGER"

    invoke-direct {p0, v0, p1}, Lcom/vivo/vcalendar/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Trigger"

    const-string v1, "Constructor: TRIGGER property created"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final toAlarmsContentValue(Landroid/content/ContentValues;)V
    .locals 5

    const-string v0, "Trigger"

    const-string v1, "toAlarmsContentValue started"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/b/l;->toAlarmsContentValue(Landroid/content/ContentValues;)V

    const-string v0, "minutes"

    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/vivo/vcalendar/b/p;->b:Ljava/lang/String;

    invoke-static {v3}, Lcom/vivo/vcalendar/component/VComponentBuilder;->getDurationMillis(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v1, v3

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
