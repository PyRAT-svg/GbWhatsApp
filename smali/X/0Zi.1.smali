.class public final synthetic LX/0Zi;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic A00:Lcom/gbwhatsapq/AudioPickerActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/gbwhatsapq/AudioPickerActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX/0Zi;->A00:Lcom/gbwhatsapq/AudioPickerActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, LX/0Zi;->A00:Lcom/gbwhatsapq/AudioPickerActivity;

    invoke-virtual {v0, p1}, Lcom/gbwhatsapq/AudioPickerActivity;->lambda$onSearchRequested$2$AudioPickerActivity(Landroid/view/View;)V

    return-void
.end method
