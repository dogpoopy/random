.class Lcom/netease/mpay/oversea/auth2/AuthActivity$7;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mpay/oversea/auth2/AuthActivity;->onInitUniSDKFailed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mpay/oversea/auth2/AuthActivity;


# direct methods
.method constructor <init>(Lcom/netease/mpay/oversea/auth2/AuthActivity;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/netease/mpay/oversea/auth2/AuthActivity$7;->this$0:Lcom/netease/mpay/oversea/auth2/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 184
    iget-object p1, p0, Lcom/netease/mpay/oversea/auth2/AuthActivity$7;->this$0:Lcom/netease/mpay/oversea/auth2/AuthActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils;->relaunchApp(Landroid/app/Activity;Z)V

    return-void
.end method
