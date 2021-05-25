.class public final Lcom/vivo/vcalendar/b/q;
.super Lcom/vivo/vcalendar/b/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "UID"

    invoke-direct {p0, v0, p1}, Lcom/vivo/vcalendar/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Uid"

    const-string v1, "Constructor: Uid Property created."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final toEventsContentValue(Landroid/content/ContentValues;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/b/l;->toEventsContentValue(Landroid/content/ContentValues;)V

    const-string v0, "_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
