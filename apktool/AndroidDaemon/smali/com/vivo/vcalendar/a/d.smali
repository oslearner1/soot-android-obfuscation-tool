.class public final Lcom/vivo/vcalendar/a/d;
.super Lcom/vivo/vcalendar/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "PARTSTAT"

    invoke-direct {p0, v0, p1}, Lcom/vivo/vcalendar/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Parstat"

    const-string v1, "Constructor: PARTSTAT parameter created."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getPartstatString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "NEEDS-ACTION"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NEEDS-ACTION"

    goto :goto_0

    :pswitch_1
    const-string v0, "ACCEPTED"

    goto :goto_0

    :pswitch_2
    const-string v0, "DECCLIEND"

    goto :goto_0

    :pswitch_3
    const-string v0, "X-INVITED"

    goto :goto_0

    :pswitch_4
    const-string v0, "TENTATIVE"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public final toAttendeesContentValue(Landroid/content/ContentValues;)V
    .locals 3

    const-string v0, "Parstat"

    const-string v1, "toAttendeesContentValue started"

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/a/c;->toAttendeesContentValue(Landroid/content/ContentValues;)V

    const-string v1, "attendeeStatus"

    iget-object v0, p0, Lcom/vivo/vcalendar/a/d;->a:Ljava/lang/String;

    const-string v2, "ACCEPTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_0
    const-string v2, "DECCLIEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v2, "X-INVITED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v2, "TENTATIVE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
