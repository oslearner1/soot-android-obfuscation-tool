.class public final Lcom/vivo/vcalendar/a/g;
.super Lcom/vivo/vcalendar/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "VALUE"

    invoke-direct {p0, v0, p1}, Lcom/vivo/vcalendar/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Value"

    const-string v1, "Constructor: value parameter created"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
