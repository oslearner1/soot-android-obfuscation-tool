.class public final Lcom/vivo/vcalendar/a/a;
.super Lcom/vivo/vcalendar/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "CN"

    invoke-direct {p0, v0, p1}, Lcom/vivo/vcalendar/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Cn"

    const-string v1, "Constructor: CN parameter started"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final toAttendeesContentValue(Landroid/content/ContentValues;)V
    .locals 2

    const-string v0, "Cn"

    const-string v1, "toAttendeesContentValue started"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/a/c;->toAttendeesContentValue(Landroid/content/ContentValues;)V

    const-string v0, "attendeeName"

    iget-object v1, p0, Lcom/vivo/vcalendar/a/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
