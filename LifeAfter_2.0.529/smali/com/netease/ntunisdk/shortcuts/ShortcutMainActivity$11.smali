.class Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$11;
.super Ljava/lang/Object;
.source "ShortcutMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;->onInitUniSDKFailed()V
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

    .line 354
    iput-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$11;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 357
    iget-object p1, p0, Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity$11;->this$0:Lcom/netease/ntunisdk/shortcuts/ShortcutMainActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/netease/ntunisdk/shortcuts/ShortcutUtils;->relaunchApp(Landroid/app/Activity;Z)V

    return-void
.end method
