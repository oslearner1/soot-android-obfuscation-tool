.class final Lcom/vivo/PCTools/PhoneInfo/a;
.super Ljava/util/TimerTask;


# instance fields
.field private synthetic a:Lcom/vivo/PCTools/PhoneInfo/CategoryBar;


# direct methods
.method constructor <init>(Lcom/vivo/PCTools/PhoneInfo/CategoryBar;)V
    .locals 0

    iput-object p1, p0, Lcom/vivo/PCTools/PhoneInfo/a;->a:Lcom/vivo/PCTools/PhoneInfo/CategoryBar;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/vivo/PCTools/PhoneInfo/a;->a:Lcom/vivo/PCTools/PhoneInfo/CategoryBar;

    invoke-static {v0}, Lcom/vivo/PCTools/PhoneInfo/CategoryBar;->a(Lcom/vivo/PCTools/PhoneInfo/CategoryBar;)V

    return-void
.end method
