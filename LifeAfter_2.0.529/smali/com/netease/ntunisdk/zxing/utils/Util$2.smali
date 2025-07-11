.class final Lcom/netease/ntunisdk/zxing/utils/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/zxing/utils/Util;->scanningImage(Ljava/lang/String;Lcom/netease/ntunisdk/zxing/utils/Util$ScanImageCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/netease/ntunisdk/zxing/utils/Util$ScanImageCallback;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/netease/ntunisdk/zxing/utils/Util$ScanImageCallback;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/netease/ntunisdk/zxing/utils/Util$2;->val$path:Ljava/lang/String;

    iput-object p2, p0, Lcom/netease/ntunisdk/zxing/utils/Util$2;->val$callback:Lcom/netease/ntunisdk/zxing/utils/Util$ScanImageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 874
    iget-object v1, p0, Lcom/netease/ntunisdk/zxing/utils/Util$2;->val$path:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/zxing/utils/Util;->access$100(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 875
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 881
    :cond_1
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 882
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/utils/Util$2;->val$callback:Lcom/netease/ntunisdk/zxing/utils/Util$ScanImageCallback;

    invoke-interface {v0}, Lcom/netease/ntunisdk/zxing/utils/Util$ScanImageCallback;->onFailed()V

    goto :goto_2

    .line 884
    :cond_2
    iget-object v0, p0, Lcom/netease/ntunisdk/zxing/utils/Util$2;->val$callback:Lcom/netease/ntunisdk/zxing/utils/Util$ScanImageCallback;

    invoke-interface {v0, v1}, Lcom/netease/ntunisdk/zxing/utils/Util$ScanImageCallback;->onSuccess(Ljava/lang/String;)V

    :goto_2
    return-void
.end method
