.class Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$5;
.super Ljava/lang/Object;
.source "ContentDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;->rejectProtocolConfirm(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/netease/ntunisdk/external/protocol/view/ContentDialog$5;->this$0:Lcom/netease/ntunisdk/external/protocol/view/ContentDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 325
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
