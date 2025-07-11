.class Lcom/netease/mrzhna/Launcher$11;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Launcher;->showRequestPermissionDialog(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/Launcher;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Launcher;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1570
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$11;->this$0:Lcom/netease/mrzhna/Launcher;

    iput-object p2, p0, Lcom/netease/mrzhna/Launcher$11;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 1573
    iget-object p1, p0, Lcom/netease/mrzhna/Launcher$11;->val$activity:Landroid/app/Activity;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v1, p2, v0

    const/16 v0, 0x4d2

    invoke-static {p1, p2, v0}, Lcom/netease/mrzhna/SupportHelper;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
