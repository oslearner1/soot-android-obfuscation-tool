.class public final Lcom/vivo/vcalendar/b/e;
.super Lcom/vivo/vcalendar/b/l;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "DESCRIPTION"

    invoke-direct {p0, v0, p1}, Lcom/vivo/vcalendar/b/l;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Description"

    const-string v1, "Constructor: Description property created."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final toEventsContentValue(Landroid/content/ContentValues;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/b/l;->toEventsContentValue(Landroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/vivo/vcalendar/b/e;->b:Ljava/lang/String;

    const-string v1, "description"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
