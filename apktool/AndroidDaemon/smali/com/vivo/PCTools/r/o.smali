.class public final Lcom/vivo/PCTools/r/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final a:Landroid/net/Uri;

.field public static b:Ljava/lang/String;

.field public static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://telephony/siminfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/vivo/PCTools/r/o;->a:Landroid/net/Uri;

    const-string v0, "slot"

    sput-object v0, Lcom/vivo/PCTools/r/o;->b:Ljava/lang/String;

    const/4 v0, -0x1

    sput v0, Lcom/vivo/PCTools/r/o;->c:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    const-string v0, "sim_id"

    sput-object v0, Lcom/vivo/PCTools/r/o;->b:Ljava/lang/String;

    const/16 v0, -0x3e8

    sput v0, Lcom/vivo/PCTools/r/o;->c:I

    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
