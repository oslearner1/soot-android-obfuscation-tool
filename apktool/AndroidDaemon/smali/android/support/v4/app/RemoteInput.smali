.class public Landroid/support/v4/app/RemoteInput;
.super Landroid/support/v4/app/ch;


# static fields
.field public static final a:Landroid/support/v4/app/ci;

.field private static final g:Landroid/support/v4/app/cd;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/CharSequence;

.field private final d:[Ljava/lang/CharSequence;

.field private final e:Z

.field private final f:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    new-instance v0, Landroid/support/v4/app/ce;

    invoke-direct {v0}, Landroid/support/v4/app/ce;-><init>()V

    sput-object v0, Landroid/support/v4/app/RemoteInput;->g:Landroid/support/v4/app/cd;

    :goto_0
    new-instance v0, Landroid/support/v4/app/ci;

    invoke-direct {v0}, Landroid/support/v4/app/ci;-><init>()V

    sput-object v0, Landroid/support/v4/app/RemoteInput;->a:Landroid/support/v4/app/ci;

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    new-instance v0, Landroid/support/v4/app/cg;

    invoke-direct {v0}, Landroid/support/v4/app/cg;-><init>()V

    sput-object v0, Landroid/support/v4/app/RemoteInput;->g:Landroid/support/v4/app/cd;

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/support/v4/app/cf;

    invoke-direct {v0}, Landroid/support/v4/app/cf;-><init>()V

    sput-object v0, Landroid/support/v4/app/RemoteInput;->g:Landroid/support/v4/app/cd;

    goto :goto_0
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/ch;-><init>()V

    iput-object p1, p0, Landroid/support/v4/app/RemoteInput;->b:Ljava/lang/String;

    iput-object p2, p0, Landroid/support/v4/app/RemoteInput;->c:Ljava/lang/CharSequence;

    iput-object p3, p0, Landroid/support/v4/app/RemoteInput;->d:[Ljava/lang/CharSequence;

    iput-boolean p4, p0, Landroid/support/v4/app/RemoteInput;->e:Z

    iput-object p5, p0, Landroid/support/v4/app/RemoteInput;->f:Landroid/os/Bundle;

    return-void
.end method

.method public static addResultsToIntent([Landroid/support/v4/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 1

    sget-object v0, Landroid/support/v4/app/RemoteInput;->g:Landroid/support/v4/app/cd;

    invoke-interface {v0, p0, p1, p2}, Landroid/support/v4/app/cd;->addResultsToIntent([Landroid/support/v4/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    return-void
.end method

.method public static getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;
    .locals 1

    sget-object v0, Landroid/support/v4/app/RemoteInput;->g:Landroid/support/v4/app/cd;

    invoke-interface {v0, p0}, Landroid/support/v4/app/cd;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAllowFreeFormInput()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v4/app/RemoteInput;->e:Z

    return v0
.end method

.method public getChoices()[Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/RemoteInput;->d:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/RemoteInput;->f:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/RemoteInput;->c:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getResultKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/RemoteInput;->b:Ljava/lang/String;

    return-object v0
.end method
