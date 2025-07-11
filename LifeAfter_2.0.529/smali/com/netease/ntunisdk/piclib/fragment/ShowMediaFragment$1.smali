.class Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;
.super Ljava/lang/Object;
.source "ShowMediaFragment.java"

# interfaces
.implements Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;


# direct methods
.method constructor <init>(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entity",
            "adapter",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
            "*>;I)V"
        }
    .end annotation

    .line 161
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onItemClick sel index: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ShowMediaFragment"

    invoke-static {v0, p2}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object p2

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->mediaRequestOptions:Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;

    iget-boolean p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/MediaRequestOptions;->supportCamera:Z

    if-eqz p2, :cond_0

    if-nez p3, :cond_0

    .line 163
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->newFragment:Landroidx/lifecycle/MutableLiveData;

    const-string p2, "com.netease.ntunisdk.piclib.fragment.TakeMediaFragment"

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 165
    :cond_0
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object p2

    iget-boolean p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->singleJumpClip:Z

    if-eqz p2, :cond_2

    .line 167
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$100(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/netease/ntunisdk/piclib/adapter/ShowLocalRecAdapter;->getData()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 168
    iget-object p2, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->mediaType:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    sget-object v0, Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;->GIF:Lcom/netease/ntunisdk/piclib/constant/ConstLegacy$MediaType;

    if-ne p2, v0, :cond_1

    return-void

    .line 171
    :cond_1
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$202(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;I)I

    .line 172
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object p2

    iput-object p1, p2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    .line 173
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    const/4 p2, 0x1

    iput p2, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    .line 174
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object p2

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->targetEditEntity:Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->newFragment:Landroidx/lifecycle/MutableLiveData;

    const-string p2, "com.netease.ntunisdk.piclib.fragment.EditMediaFragment"

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 178
    :cond_2
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object p2

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 179
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object p2

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;->list:Ljava/util/List;

    iget-object v1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {v1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object v1

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    iget-object v1, v1, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->selectedList:Ljava/util/LinkedList;

    invoke-interface {p2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    iget p2, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    if-gtz p2, :cond_3

    .line 181
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$202(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;I)I

    .line 182
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object p2

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;->list:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    :cond_3
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    const/4 p3, -0x1

    invoke-static {p2, p3}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$202(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;I)I

    .line 184
    :goto_0
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object p2

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    iget-object p3, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p3}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object p3

    iget-object p3, p3, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    iget-object p3, p3, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;->list:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iput p1, p2, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;->position:I

    .line 185
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onItemClick position: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object p2

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->previewMediaData:Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;

    iget p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/PreviewData;->position:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    iget-object p1, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p1}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object p1

    iget-object p1, p1, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->newFragment:Landroidx/lifecycle/MutableLiveData;

    const-string p2, "com.netease.ntunisdk.piclib.fragment.PreviewMediaFragment"

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public onItemSelected(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "entity",
            "adapter",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;",
            "Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter<",
            "*>;I)V"
        }
    .end annotation

    .line 193
    iget v0, p1, Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;->selectedIndex:I

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {v0}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object v0

    iget-object v1, v0, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    invoke-virtual {p2}, Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;->getCurrentDataTag()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;->UPDATE:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->addEntity(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;Lcom/netease/ntunisdk/piclib/adapter/SelNumBaseAdapter;ILjava/lang/String;Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder$SelectedEntityState;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object p2, p0, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment$1;->this$0:Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;

    invoke-static {p2}, Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;->access$000(Lcom/netease/ntunisdk/piclib/fragment/ShowMediaFragment;)Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;

    move-result-object p2

    iget-object p2, p2, Lcom/netease/ntunisdk/piclib/dataholder/ViewModelPicLib;->selectedHolder:Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;

    invoke-virtual {p2, p1}, Lcom/netease/ntunisdk/piclib/dataholder/SelectedHolder;->removeEntity(Lcom/netease/ntunisdk/piclib/dataholder/MediaInfoEntity;)V

    :goto_0
    return-void
.end method
