.class final Lcom/netease/ntunisdk/zxing/utils/Util$1;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/zxing/utils/Util;->toastMessage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .line 504
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/utils/Util$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/netease/ntunisdk/zxing/utils/Util$1;->val$message:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 507
    invoke-static {}, Lcom/netease/ntunisdk/zxing/utils/Util;->access$000()Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    invoke-static {}, Lcom/netease/ntunisdk/zxing/utils/Util;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    const/4 v0, 0x0

    .line 509
    invoke-static {v0}, Lcom/netease/ntunisdk/zxing/utils/Util;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/utils/Util$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/utils/Util$1;->val$message:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/ntunisdk/zxing/utils/Util;->access$002(Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 512
    invoke-static {}, Lcom/netease/ntunisdk/zxing/utils/Util;->access$000()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
