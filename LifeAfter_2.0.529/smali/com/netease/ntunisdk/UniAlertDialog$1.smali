.class Lcom/netease/ntunisdk/UniAlertDialog$1;
.super Ljava/lang/Object;
.source "UniAlertDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/UniAlertDialog;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/UniAlertDialog;

.field final synthetic val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$cancel_text:Ljava/lang/String;

.field final synthetic val$cancelable:Z

.field final synthetic val$ok_listener:Landroid/content/DialogInterface$OnClickListener;

.field final synthetic val$ok_text:Ljava/lang/String;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/UniAlertDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/netease/ntunisdk/UniAlertDialog$1;->this$0:Lcom/netease/ntunisdk/UniAlertDialog;

    iput-object p2, p0, Lcom/netease/ntunisdk/UniAlertDialog$1;->val$text:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/ntunisdk/UniAlertDialog$1;->val$ok_text:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/ntunisdk/UniAlertDialog$1;->val$cancel_text:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/ntunisdk/UniAlertDialog$1;->val$ok_listener:Landroid/content/DialogInterface$OnClickListener;

    iput-object p6, p0, Lcom/netease/ntunisdk/UniAlertDialog$1;->val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;

    iput-boolean p7, p0, Lcom/netease/ntunisdk/UniAlertDialog$1;->val$cancelable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 41
    iget-object v0, p0, Lcom/netease/ntunisdk/UniAlertDialog$1;->this$0:Lcom/netease/ntunisdk/UniAlertDialog;

    iget-object v1, p0, Lcom/netease/ntunisdk/UniAlertDialog$1;->val$text:Ljava/lang/String;

    iget-object v2, p0, Lcom/netease/ntunisdk/UniAlertDialog$1;->val$ok_text:Ljava/lang/String;

    iget-object v3, p0, Lcom/netease/ntunisdk/UniAlertDialog$1;->val$cancel_text:Ljava/lang/String;

    iget-object v4, p0, Lcom/netease/ntunisdk/UniAlertDialog$1;->val$ok_listener:Landroid/content/DialogInterface$OnClickListener;

    iget-object v5, p0, Lcom/netease/ntunisdk/UniAlertDialog$1;->val$cancel_listener:Landroid/content/DialogInterface$OnClickListener;

    iget-boolean v6, p0, Lcom/netease/ntunisdk/UniAlertDialog$1;->val$cancelable:Z

    invoke-virtual/range {v0 .. v6}, Lcom/netease/ntunisdk/UniAlertDialog;->alertImpl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method
