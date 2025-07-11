.class Lcom/netease/mrzhna/ImagePicker$5;
.super Ljava/lang/Object;
.source "ImagePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/ImagePicker;->execute(IILjava/lang/String;IIIIIILjava/lang/String;II)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/mrzhna/ImagePicker;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/ImagePicker;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/netease/mrzhna/ImagePicker$5;->this$0:Lcom/netease/mrzhna/ImagePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 210
    iget-object p1, p0, Lcom/netease/mrzhna/ImagePicker$5;->this$0:Lcom/netease/mrzhna/ImagePicker;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/netease/mrzhna/ImagePicker;->access$200(Lcom/netease/mrzhna/ImagePicker;I)V

    return-void
.end method
