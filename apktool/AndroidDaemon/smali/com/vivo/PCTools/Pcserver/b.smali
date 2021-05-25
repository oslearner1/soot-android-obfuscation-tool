.class public Lcom/vivo/PCTools/Pcserver/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/vivo/PCTools/Pcserver/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/Pcserver/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HandleMessage(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "\u672a\u8bc6\u522b\u7684\u6a21\u5757"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/vivo/PCTools/Pcserver/b;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u672a\u8bc6\u522b\u7684\u6a21\u5757:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/vivo/PCTools/q/a/a;->getModuleShort()S

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :sswitch_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vivo/PCTools/Pcserver/a;->HandleMessage()V

    :cond_0
    return-void

    :sswitch_1
    new-instance v0, Lcom/vivo/PCTools/i/f;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/PCTools/i/f;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    goto :goto_0

    :sswitch_2
    new-instance v0, Lcom/vivo/PCTools/r/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/PCTools/r/c;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    goto :goto_0

    :sswitch_3
    new-instance v0, Lcom/vivo/PCTools/m/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/PCTools/m/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    goto :goto_0

    :sswitch_4
    new-instance v0, Lcom/vivo/PCTools/g/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/PCTools/g/c;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    goto :goto_0

    :sswitch_5
    new-instance v0, Lcom/vivo/PCTools/k/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/PCTools/k/b;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    goto :goto_0

    :sswitch_6
    new-instance v0, Lcom/vivo/PCTools/l/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/PCTools/l/b;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    goto :goto_0

    :sswitch_7
    new-instance v0, Lcom/vivo/PCTools/f/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/PCTools/f/b;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    goto :goto_0

    :sswitch_8
    new-instance v0, Lcom/vivo/PCTools/Calendar/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/PCTools/Calendar/d;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    goto :goto_0

    :sswitch_9
    new-instance v0, Lcom/vivo/PCTools/c/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/PCTools/c/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    goto :goto_0

    :sswitch_a
    new-instance v0, Lcom/vivo/PCTools/b/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/PCTools/b/b;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    goto :goto_0

    :sswitch_b
    new-instance v0, Lcom/vivo/PCTools/e/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/PCTools/e/b;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    goto :goto_0

    :sswitch_c
    new-instance v0, Lcom/vivo/PCTools/a/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/PCTools/a/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    goto :goto_0

    :sswitch_d
    new-instance v0, Lcom/vivo/PCTools/f/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/PCTools/f/a;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    goto :goto_0

    :sswitch_e
    new-instance v0, Lcom/vivo/PCTools/f/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/vivo/PCTools/f/d;-><init>(Lcom/vivo/PCTools/q/a/a;Lorg/jboss/netty/channel/Channel;Landroid/content/Context;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_0
        0x7 -> :sswitch_6
        0x8 -> :sswitch_0
        0x9 -> :sswitch_5
        0xa -> :sswitch_a
        0xb -> :sswitch_9
        0xc -> :sswitch_8
        0xd -> :sswitch_0
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_d
        0x12 -> :sswitch_e
        0xff -> :sswitch_7
    .end sparse-switch
.end method
