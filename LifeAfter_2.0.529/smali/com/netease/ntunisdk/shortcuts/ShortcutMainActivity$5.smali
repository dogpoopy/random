.class Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$5;
.super Ljava/lang/Object;
.source "ShortcutMainActivity.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnOrderCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->initUniSDK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$5;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public orderCheckDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "NULL"

    :goto_0
    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "orderCheckDone, orderInfo = %s"

    .line 236
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "QR quickqr_main"

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public orderConsumeDone(Lcom/netease/ntunisdk/base/OrderInfo;)V
    .locals 0

    return-void
.end method
