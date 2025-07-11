.class Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$9;
.super Ljava/lang/Object;
.source "ShortcutMainActivity.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnCodeScannerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->onInitUniSDKSuccess()V
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

    .line 336
    iput-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$9;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public codeScannerFinish(ILjava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 339
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    const-string v1, "codeScannerFinish, code = %s, extra = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QR quickqr_main"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$9;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    invoke-static {v0, p1, p2}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->access$900(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;ILjava/lang/String;)V

    return-void
.end method
