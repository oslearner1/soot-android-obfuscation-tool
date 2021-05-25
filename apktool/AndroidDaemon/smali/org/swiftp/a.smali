.class public final Lorg/swiftp/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/swiftp/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getUsername()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/swiftp/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final setUsername(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/swiftp/a;->a:Ljava/lang/String;

    return-void
.end method
