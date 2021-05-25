.class public final Lcom/vivo/vcalendar/a/h;
.super Lcom/vivo/vcalendar/a/c;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "X-RELATIONSHIP"

    invoke-direct {p0, v0, p1}, Lcom/vivo/vcalendar/a/c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "XAttendeeRelationship"

    const-string v1, "Constructor : X-RELATIONSHIP paratmeter created."

    invoke-static {v0, v1}, Lcom/vivo/vcalendar/component/VComponentBuilder;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getXRelationshipString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "ATTENDEE"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "NONE"

    goto :goto_0

    :pswitch_1
    const-string v0, "ATTENDEE"

    goto :goto_0

    :pswitch_2
    const-string v0, "ORGANIZER"

    goto :goto_0

    :pswitch_3
    const-string v0, "PERFORMER"

    goto :goto_0

    :pswitch_4
    const-string v0, "SPEAKER"

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

    invoke-super {p0, p1}, Lcom/vivo/vcalendar/a/c;->toAttendeesContentValue(Landroid/content/ContentValues;)V

    const-string v1, "attendeeRelationship"

    iget-object v0, p0, Lcom/vivo/vcalendar/a/h;->a:Ljava/lang/String;

    const-string v2, "NONE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-void

    :cond_0
    const-string v2, "ORGANIZER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-string v2, "PERFORMER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-string v2, "SPEAKER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method
