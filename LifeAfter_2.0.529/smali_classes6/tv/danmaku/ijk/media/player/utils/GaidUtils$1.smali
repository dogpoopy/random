.class final Ltv/danmaku/ijk/media/player/utils/GaidUtils$1;
.super Ljava/lang/Object;
.source "GaidUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltv/danmaku/ijk/media/player/utils/GaidUtils;->getCachedGaid(Landroid/content/Context;Ltv/danmaku/ijk/media/player/utils/GaidUtils$Callback;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 91
    iput-object p1, p0, Ltv/danmaku/ijk/media/player/utils/GaidUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 94
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/utils/GaidUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 95
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Ltv/danmaku/ijk/media/player/utils/GaidUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Ltv/danmaku/ijk/media/player/utils/GaidUtils;->access$100(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
