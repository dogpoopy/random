.class Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$7;
.super Ljava/lang/Object;
.source "ShortcutMainActivity.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnFinishInitListener;


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

    .line 276
    iput-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$7;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finishInit(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 279
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "finishInit, code = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QR quickqr_main"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "UniSDK ntInit failed, scan qrcode ignore"

    .line 284
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$7;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    invoke-static {p1}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->access$700(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "UniSDK ntInit success"

    .line 281
    invoke-static {v1, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    iget-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$7;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    invoke-static {p1}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->access$600(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;)V

    :goto_1
    return-void
.end method
