.class public final Lcom/vivo/vcalendar/component/f;
.super Lcom/vivo/vcalendar/component/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "VTIMEZONE"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vivo/vcalendar/component/a;-><init>(Ljava/lang/String;Lcom/vivo/vcalendar/component/a;)V

    const-string v0, "VTimezone"

    const-string v1, "Constructor: VTIMEZONE component created!"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
