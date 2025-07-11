.class Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$3;
.super Ljava/lang/Object;
.source "ShortcutMainActivity.java"

# interfaces
.implements Lcom/netease/ntunisdk/base/OnLoginDoneListener;


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

    .line 218
    iput-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$3;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loginDone(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 221
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "loginDone, code = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QR quickqr_main"

    invoke-static {v1, v0}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$3;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->access$300(Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;I)V

    return-void
.end method
