.class public abstract Lcom/netease/ntunisdk/core/others/CustomClickListener;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Z

.field private b:Lcom/netease/ntunisdk/core/others/OnUnShiveringClickListener;

.field private c:I

.field private d:J

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener;->a:Z

    const/4 v0, 0x1

    iput v0, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener;->c:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener;->d:J

    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener;->e:J

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    iget v0, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener;->c:I

    if-lez v0, :cond_0

    invoke-static {}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->getInstance()Lcom/netease/ntunisdk/core/skins/audio/SoundBox;

    move-result-object v0

    iget v1, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener;->c:I

    invoke-virtual {v0, v1}, Lcom/netease/ntunisdk/core/skins/audio/SoundBox;->playSound(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/netease/ntunisdk/core/others/CustomClickListener;->onCustomClick(Landroid/view/View;)V

    invoke-static {p1}, Lcom/netease/ntunisdk/core/others/ViewUtils;->checkExpandViewTag(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CustomClickListener checkExpandViewTag() is true!"

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->detail(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/netease/ntunisdk/core/others/CustomClickListener;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/core/others/CustomClickListener;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener;->d:J

    sub-long v2, v0, v2

    iget-wide v4, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener;->e:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iput-wide v0, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener;->d:J

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const-string p1, "CustomClickListener onClick() ignore!"

    invoke-static {p1}, Lcom/netease/ntunisdk/core/logs/LoggingCore;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener;->b:Lcom/netease/ntunisdk/core/others/OnUnShiveringClickListener;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/netease/ntunisdk/core/others/OnUnShiveringClickListener;->onClick(Landroid/view/View;)V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/core/others/CustomClickListener;->a(Landroid/view/View;)V

    return-void
.end method

.method protected abstract onCustomClick(Landroid/view/View;)V
.end method

.method public setSoundType(I)Lcom/netease/ntunisdk/core/others/CustomClickListener;
    .locals 0

    iput p1, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener;->c:I

    return-object p0
.end method

.method public setUnShivering()Lcom/netease/ntunisdk/core/others/CustomClickListener;
    .locals 2

    const-wide/16 v0, 0x320

    invoke-virtual {p0, v0, v1}, Lcom/netease/ntunisdk/core/others/CustomClickListener;->setUnShivering(J)Lcom/netease/ntunisdk/core/others/CustomClickListener;

    move-result-object v0

    return-object v0
.end method

.method public setUnShivering(J)Lcom/netease/ntunisdk/core/others/CustomClickListener;
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener;->a:Z

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    iput-wide p1, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener;->e:J

    :cond_0
    new-instance p1, Lcom/netease/ntunisdk/core/others/CustomClickListener$1;

    invoke-direct {p1, p0}, Lcom/netease/ntunisdk/core/others/CustomClickListener$1;-><init>(Lcom/netease/ntunisdk/core/others/CustomClickListener;)V

    iput-object p1, p0, Lcom/netease/ntunisdk/core/others/CustomClickListener;->b:Lcom/netease/ntunisdk/core/others/OnUnShiveringClickListener;

    return-object p0
.end method
